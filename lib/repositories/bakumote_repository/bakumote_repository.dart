import 'dart:convert';

import 'package:bakumote/directory.dart';
import 'package:bakumote/objectbox.g.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/like_history/like_history.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';
import 'package:objectbox/objectbox.dart';

final bakumoteRepositoryProvider = Provider<BakumoteRepository>((_) {
  final store =
      Store(getObjectBoxModel(), directory: '${appDocumentDir.path}/objectbox');
  return BakumoteRepositoryImpl(store);
});

abstract class BakumoteRepository {
  Future<List<User>> loadUsers();
  void saveLike(User user);
  LikeHistory loadLike(String userId);
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
}
