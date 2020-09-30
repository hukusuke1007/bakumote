import 'dart:async';

import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
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
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);

  Future _configure() async {
    await load();
  }

  Future load() async {
    final data = await bakumoteRepository.loadUsers();
    final list = List.generate(
      100,
      (index) => UserState(
        id: '$index',
        name: 'かおり',
        birthday: DateTime(2000, 1, 1),
        genderId: 1,
        prefectureId: 2,
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
