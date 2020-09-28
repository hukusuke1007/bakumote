import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_state.dart';

part 'users_state.freezed.dart';

@freezed
abstract class UsersState with _$UsersState {
  factory UsersState({
    List<UserState> users,
  }) = _UsersState;
  UsersState._();
}
