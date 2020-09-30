import 'dart:convert';
import 'dart:io';

import 'package:bakumote/directory.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart'
    as domain_profile;
import 'package:bakumote/objectbox.g.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/block_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/like_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/profile.dart';
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
  void saveBlockUser(User user);
  BlockHistory loadBlockUser(String userId);
  void saveProfile({
    @required domain_profile.Profile user,
    File imageFile,
    bool isUpdate,
  });
  Profile loadProfile(int id);
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
  void saveBlockUser(User user) {
    final now = DateTime.now();
    final object = BlockHistory(
      userId: user.id,
      userName: user.name,
      userImageName: user.imageName,
      createdAt: now.millisecondsSinceEpoch,
      updatedAt: now.millisecondsSinceEpoch,
    );
    Box<BlockHistory>(_store).put(object);
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
      id: Profile.myProfileId,
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
  Profile loadProfile(int id) => Box<Profile>(_store).get(id);
}
