import 'dart:convert';
import 'dart:io';

import 'package:bakumote/directory.dart';
import 'package:bakumote/notifiers/messages//messages_state.dart'
    as domain_message;
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart'
    as domain_profile;
import 'package:bakumote/notifiers/rooms/rooms_state.dart' as domain_room;
import 'package:bakumote/objectbox.g.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/block_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/like_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/message.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/profile.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/room.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';
import 'package:objectbox/objectbox.dart';
import 'package:uuid/uuid.dart';

final bakumoteRepositoryProvider = Provider<BakumoteRepository>((_) {
  final store =
      Store(getObjectBoxModel(), directory: '${appDocumentDir.path}/objectbox');
  return BakumoteRepositoryImpl(store);
});

abstract class BakumoteRepository {
  Future<List<User>> loadUsers();
  void saveLike(User user);
  LikeHistory loadLike(String userId);
  void saveBlockUser(String roomId, User user);
  BlockHistory loadBlockUser(String userId);
  void saveProfile({
    @required domain_profile.Profile user,
    File imageFile,
    bool isUpdate,
  });
  Profile loadProfile();
  void createRoom(domain_room.RoomState room, String myUserId);
  void updateLatestMessage(String roomId, String text);
  void updateUnreadCount(String roomId, int unreadCount);
  Room loadRoom(String roomId);
  List<Room> loadRooms({
    int limit = 20,
    int offset = 0,
  });
  void saveMessage(domain_message.MessageState message, String roomId);
  List<Message> loadMessages({
    @required String roomId,
    int limit = 20,
    int offset = 0,
  });
}

class BakumoteRepositoryImpl extends BakumoteRepository {
  BakumoteRepositoryImpl(this._store);

  final Store _store;

  @override
  Future<List<User>> loadUsers() async {
    final raw = await rootBundle.loadString('assets/json/users.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final data = json['data'] as List<dynamic>;
    return data
        .map((dynamic e) => User.fromJson(e as Map<String, dynamic>))
        .toList();
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
  void saveProfile({
    @required domain_profile.Profile user,
    File imageFile,
    bool isUpdate = false,
  }) {
    final now = DateTime.now();
    final object = Profile(
      id: Profile.myProfileId(),
      userId: isUpdate ? user.id : Uuid().v4(),
      name: user.name,
      birthday: user.birthday.millisecondsSinceEpoch,
      genderId: user.genderId,
      prefectureId: user.prefectureId,
      description: user.description,
      hobby: user.hobby,
      favoriteType: user.favoriteType,
      updatedAt: now.millisecondsSinceEpoch,
    );
    if (imageFile != null) {
      object.imagePath = imageFile.path;
    }
    if (!isUpdate) {
      object.createdAt = now.millisecondsSinceEpoch;
    }
    Box<Profile>(_store).put(object);
  }

  @override
  Profile loadProfile() => Box<Profile>(_store).get(Profile.myProfileId());

  @override
  void createRoom(domain_room.RoomState room, String myUserId) {
    final now = DateTime.now();
    final object = Room(
      roomId: Uuid().v4(),
      members: [
        room.userId,
        myUserId,
      ],
      latestMessage: '',
      unreadCount: 0,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<Room>(_store).put(object);
  }

  @override
  void updateLatestMessage(String roomId, String text) {
    final object = loadRoom(roomId);
    if (object == null) {
      return;
    }
    object.latestMessage = text;
    Box<Room>(_store).put(object);
  }

  @override
  void updateUnreadCount(String roomId, int unreadCount) {
    final object = loadRoom(roomId);
    if (object == null) {
      return;
    }
    object.unreadCount = unreadCount;
    Box<Room>(_store).put(object);
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
        .query(null)
        .order(Room_.updatedAt, flags: Order.descending)
        .build();
    final item = query.find(limit: limit, offset: offset);
    query.close();
    return item.map((dynamic e) => e as Room).toList();
  }

  @override
  void saveMessage(domain_message.MessageState message, String roomId) {
    final now = DateTime.now();
    final object = Message(
      messageId: Uuid().v4(),
      userId: message.userId,
      roomId: roomId,
      isUnread: true,
      text: message.text,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<Message>(_store).put(object);
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
}
