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
    @Default('') String name,
    int age,
    @Default('') String gender,
    @Default('') String prefectures,
    @Default('') String imageName,
    @Default('') String description,
    @Default('') String hobby,
    @Default('') String favoriteType,
  }) = _UserState;
  UserState._();

  String get nameWithAge {
    return '$name $age';
  }

  String get nameWithAgePref {
    return '$name $age $prefectures';
  }
}
