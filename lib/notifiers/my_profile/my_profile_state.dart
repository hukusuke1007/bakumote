import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_state.freezed.dart';

@freezed
abstract class MyProfileState with _$MyProfileState {
  factory MyProfileState({
    @Default('') String name,
    int age,
    @Default('') String gender,
    @Default('') String prefectures,
    File image,
    @Default('') String description,
    @Default('') String hobby,
    @Default('') String favoriteType,
    @Default(false) bool isLoading,
  }) = _MyProfileState;
  MyProfileState._();

  String get ageWithPref {
    return '$age $prefectures';
  }
}
