import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
abstract class UsersState with _$UsersState {
  factory UsersState({
    List<UserState> users,
    @Default(false) bool isLoading,
  }) = _UsersState;
  UsersState._();
}

@freezed
abstract class UserState with _$UserState {
  factory UserState({
    String id,
    String name,
    int age,
    String gender,
    String prefectures,
    String imageName,
    String description,
    String hobby,
    String favoriteType,
  }) = _UserState;
  UserState._();

  String get nameWithAge {
    return '$name $age';
  }

  String get nameWithAgePref {
    return '$name $age $prefectures';
  }
}
