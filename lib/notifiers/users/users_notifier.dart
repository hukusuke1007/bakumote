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
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(isLoading: true);
    final users = await bakumoteRepository.loadUsers();
    state = state.copyWith(users: users, isLoading: false);
  }
}
