import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:bakumote/directory.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart'
    as domain_profile;
import 'package:bakumote/objectbox.g.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/block_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/counter.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/like_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/message.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/profile.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/room.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user_metadata.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';
import 'package:objectbox/objectbox.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

final bakumoteRepositoryProvider = Provider<BakumoteRepository>((_) {
  final store =
      Store(getObjectBoxModel(), directory: '${appDocumentDir.path}/objectbox');
  final imageDir = Directory('${appDocumentDir.path}/images');
  return BakumoteRepositoryImpl(store, imageDir);
});

abstract class BakumoteRepository {
  Stream<SnapshotRoom> get fetchRoom;
  Stream<Message> get fetchMessage;
  Future<void> dispose();
  Future<List<User>> loadUsers();
  Future<User> loadUser(String userId);
  void saveLike(User user);
  LikeHistory loadLike(String userId);
  void saveBlockUser(String roomId, User user);
  BlockHistory loadBlockUser(String userId);
  String saveProfile(domain_profile.Profile user);
  String saveProfileImage(File image);
  String saveImage(
    File image, {
    String filename,
  });
  Profile loadProfile();
  File loadImage(String path);
  String createRoom(String userId);
  void updateUnreadCount(String roomId, int unreadCount);
  Room loadRoom(String roomId);
  List<Room> loadRooms({
    int limit = 20,
    int offset = 0,
  });
  String saveMessage({
    @required String userId,
    @required String text,
    @required String roomId,
  });
  List<Message> loadMessages({
    @required String roomId,
    int limit = 20,
    int offset = 0,
  });
  void saveCounter({
    int incrementUnreadCount,
  });
  Counter loadCounter();
  void saveUserMetadata(
    String userId, {
    int incrementMessageCount,
  });
  UserMetadata loadUserMetadata(String userId);
  void reset();
}

class BakumoteRepositoryImpl extends BakumoteRepository {
  BakumoteRepositoryImpl(this._store, this._imageDir);

  final Store _store;
  final Directory _imageDir;

  final _snapshotRoom = PublishSubject<SnapshotRoom>();
  final _snapshotMessage = PublishSubject<Message>();
  final _cacheUsers = <User>[];

  @override
  Stream<SnapshotRoom> get fetchRoom => _snapshotRoom;

  @override
  Stream<Message> get fetchMessage => _snapshotMessage;

  @override
  Future<void> dispose() async {
    await _snapshotRoom.close();
    await _snapshotMessage.close();
  }

  @override
  Future<List<User>> loadUsers() async {
    if (_cacheUsers.isNotEmpty) {
      return _cacheUsers;
    }
    final raw = await rootBundle.loadString('assets/json/users.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final data = json['data'] as List<dynamic>;
    _cacheUsers.addAll(data
        .map((dynamic e) => User.fromJson(e as Map<String, dynamic>))
        .toList());
    return _cacheUsers;
  }

  @override
  Future<User> loadUser(String userId) async {
    final users = await loadUsers();
    return users.firstWhere((element) => element.id == userId,
        orElse: () => null);
  }

  @override
  void saveLike(User user) {
    final now = DateTime.now();
    final object = LikeHistory(
      userId: user.id,
      userName: user.name,
      userImageName: user.imageName,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<LikeHistory>(_store).put(object);
  }

  @override
  LikeHistory loadLike(String userId) {
    final query = Box<LikeHistory>(_store)
        .query(LikeHistory_.userId.equals(userId))
        .build();
    final dynamic item = query.findFirst();
    query.close();
    if (item == null) {
      return null;
    }
    return item as LikeHistory;
  }

  @override
  void saveBlockUser(String roomId, User user) {
    final now = DateTime.now();
    final object = BlockHistory(
      roomId: roomId,
      userId: user.id,
      userName: user.name,
      userImageName: user.imageName,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<BlockHistory>(_store).put(object);
    final room = loadRoom(roomId);
    Box<Room>(_store).remove(room.id);
  }

  @override
  BlockHistory loadBlockUser(String userId) {
    final query = Box<BlockHistory>(_store)
        .query(BlockHistory_.userId.equals(userId))
        .build();
    final dynamic item = query.findFirst();
    query.close();
    if (item == null) {
      return null;
    }
    return item as BlockHistory;
  }

  @override
  String saveProfile(domain_profile.Profile user) {
    final now = DateTime.now();
    final isUpdate = loadProfile() != null;
    final object = Profile(
      id: Profile.myProfileId(),
      userId: user.id ?? Uuid().v4(),
      name: user.name,
      imagePath: user.image?.path,
      birthday: user.birthday?.millisecondsSinceEpoch,
      genderId: user.genderId,
      prefectureId: user.prefectureId,
      description: user.description,
      hobby: user.hobby,
      favoriteType: user.favoriteType,
      updatedAt: now.millisecondsSinceEpoch,
    );
    if (!isUpdate) {
      object.createdAt = now.millisecondsSinceEpoch;
    }
    Box<Profile>(_store).put(object);
    return object.userId;
  }

  @override
  String saveProfileImage(File image) {
    final path = saveImage(image, filename: Profile.imageFilename());
    final now = DateTime.now();
    var object = loadProfile();
    if (object == null) {
      object = Profile(
        id: Profile.myProfileId(),
        userId: Uuid().v4(),
        imagePath: path,
        createdAt: now.millisecondsSinceEpoch,
        updatedAt: now.millisecondsSinceEpoch,
      );
    } else {
      object
        ..imagePath = path
        ..updatedAt = now.millisecondsSinceEpoch;
    }
    Box<Profile>(_store).put(object);
    return object.userId;
  }

  @override
  String saveImage(
    File image, {
    String filename = 'image',
  }) {
    if (!_imageDir.existsSync()) {
      _imageDir.createSync();
    }
    final path = '${_imageDir.path}/$filename';
    final newFile = image.copySync(path);
    if (newFile.existsSync()) {
      newFile.deleteSync();
    }
    newFile.writeAsBytesSync(image.readAsBytesSync());
    return newFile.path;
  }

  @override
  Profile loadProfile() {
    try {
      return Box<Profile>(_store).get(Profile.myProfileId());
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  @override
  File loadImage(String path) {
    final file = File(path);
    return file;
  }

  @override
  String createRoom(String userId) {
    final now = DateTime.now();
    final object = Room(
      roomId: Uuid().v4(),
      friendUserId: userId,
      latestMessage: '',
      unreadCount: 0,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
      latestMessageAt: now.millisecondsSinceEpoch,
    );
    Box<Room>(_store).put(object);
    _snapshotRoom.add(SnapshotRoom(
      room: object,
      actionType: RoomActionType.create,
    ));
    return object.roomId;
  }

  @override
  void updateUnreadCount(String roomId, int unreadCount) {
    final object = loadRoom(roomId);
    if (object == null) {
      return;
    }
    object
      ..unreadCount = unreadCount
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;
    Box<Room>(_store).put(object);
    _snapshotRoom.add(SnapshotRoom(
      room: object,
      actionType: RoomActionType.updateUnreadCount,
    ));
  }

  @override
  Room loadRoom(String roomId) {
    final query = Box<Room>(_store).query(Room_.roomId.equals(roomId)).build();
    final dynamic item = query.findFirst();
    query.close();
    if (item == null) {
      return null;
    }
    return item as Room;
  }

  @override
  List<Room> loadRooms({
    int limit = 20,
    int offset = 0,
  }) {
    final query = Box<Room>(_store)
        .query(Room_.roomId.notNull())
        .order(Room_.latestMessageAt, flags: Order.descending)
        .build();
    final item = query.find(limit: limit, offset: offset);
    query.close();
    return item.map((dynamic e) => e as Room).toList();
  }

  @override
  String saveMessage({
    @required String userId,
    @required String text,
    @required String roomId,
  }) {
    final now = DateTime.now();
    final object = Message(
      messageId: Uuid().v4(),
      userId: userId,
      roomId: roomId,
      isUnread: true,
      text: text,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<Message>(_store).put(object);
    _snapshotMessage.add(object);
    final profile = loadProfile();
    _updateLatestMessage(
        roomId: roomId, text: text, isUnread: userId != profile.userId);
    return object.messageId;
  }

  @override
  List<Message> loadMessages({
    @required String roomId,
    int limit = 20,
    int offset = 0,
  }) {
    final query = Box<Message>(_store)
        .query(Message_.roomId.equals(roomId))
        .order(Message_.updatedAt, flags: Order.descending)
        .build();
    final item = query.find(limit: limit, offset: offset);
    query.close();
    return item.map((dynamic e) => e as Message).toList();
  }

  @override
  void saveCounter({
    int incrementUnreadCount,
  }) {
    final now = DateTime.now();
    var object = loadCounter();
    if (object != null) {
      object.updatedAt = now.millisecondsSinceEpoch;
    } else {
      object = Counter(
        id: Counter.myCounterId(),
        updatedAt: now.millisecondsSinceEpoch,
        createdAt: now.millisecondsSinceEpoch,
      );
    }
    if (incrementUnreadCount != null) {
      object.unreadCount = max(object.unreadCount + incrementUnreadCount, 0);
    }
    Box<Counter>(_store).put(object);
  }

  @override
  Counter loadCounter() {
    try {
      return Box<Counter>(_store).get(Counter.myCounterId());
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  @override
  void saveUserMetadata(
    String userId, {
    int incrementMessageCount,
  }) {
    var object = loadUserMetadata(userId);
    final now = DateTime.now();
    object ??= UserMetadata(
      userId: userId,
      createdAt: now.millisecondsSinceEpoch,
    );
    if (incrementMessageCount != null) {
      object
        ..messageCount = max(object.messageCount + incrementMessageCount, 0)
        ..updatedAt = now.millisecondsSinceEpoch;
    }
    Box<UserMetadata>(_store).put(object);
  }

  @override
  UserMetadata loadUserMetadata(String userId) {
    final query = Box<UserMetadata>(_store)
        .query(UserMetadata_.userId.equals(userId))
        .build();
    final dynamic item = query.findFirst();
    query.close();
    if (item == null) {
      return null;
    }
    return item as UserMetadata;
  }

  @override
  void reset() {
    Box<LikeHistory>(_store).removeAll();
    Box<BlockHistory>(_store).removeAll();
    Box<Message>(_store).removeAll();
    Box<Room>(_store).removeAll();
    Box<Counter>(_store).removeAll();
    Box<UserMetadata>(_store).removeAll();
    saveCounter();
  }

  void _updateLatestMessage({
    @required String roomId,
    @required String text,
    bool isUnread = false,
  }) {
    final object = loadRoom(roomId);
    if (object == null) {
      return;
    }
    final now = DateTime.now();
    object
      ..latestMessage = text
      ..updatedAt = now.millisecondsSinceEpoch
      ..latestMessageAt = now.millisecondsSinceEpoch;
    if (isUnread) {
      object.unreadCount += 1;
    }
    Box<Room>(_store).put(object);
    _snapshotRoom.add(SnapshotRoom(
      room: object,
      actionType: RoomActionType.updateLatestMessage,
    ));
  }
}
