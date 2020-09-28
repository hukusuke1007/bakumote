import 'dart:async';

import 'package:bakumote/notifiers/users/user_state.dart';
import 'package:bakumote/notifiers/users/users_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'users_state.dart';

final usersNotifierProvider = StateNotifierProvider.autoDispose<UsersNotifier>(
    (ref) => UsersNotifier(ref.read));

class UsersNotifier extends StateNotifier<UsersState> with LocatorMixin {
  UsersNotifier(
    this._read,
  ) : super(UsersState(users: [])) {
    _configure();
  }

  final Reader _read;

  Future _configure() async {
    await load();
  }

  Future load() async {
    // TODO(shohei): stub
    final list = List.generate(
      100,
      (index) => UserState(
        id: '$index',
        name: 'かおり',
        age: 20,
        gender: '女性',
        prefectures: '大阪府',
        description:
            'はじめまして！かおりといいます。趣味は料理で好きなタイプはタレ目で目の下にホクロがある男らしい人です！いい出会いがあれば一緒に退会したいです。\n\nよろしくお願いします。',
        hobby: '料理（カレーライス）',
        favoriteType: '金持ち',
      ),
    );
    print('list ${list.length}');
    state = state.copyWith(users: list);
  }
}
