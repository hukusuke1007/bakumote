import 'dart:io';

import 'package:bakumote/helpers/date_helper.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/profile.dart'
    as entity;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_state.freezed.dart';

@freezed
abstract class MyProfileState with _$MyProfileState {
  factory MyProfileState({
    Profile profile,
    @Default(false) bool isLoading,
  }) = _MyProfileState;
  MyProfileState._();
}

@freezed
abstract class Profile with _$Profile {
  factory Profile({
    String id,
    @Default('') String name,
    DateTime birthday,
    @Default(0) int genderId,
    @Default(0) int prefectureId,
    File image,
    @Default('') String description,
    @Default('') String hobby,
    @Default('') String favoriteType,
  }) = _Profile;
  Profile._();

  factory Profile.fromEntity(entity.Profile profile) => Profile(
        id: profile.userId,
        name: profile.name,
        birthday: profile.birthday != null
            ? DateTime.fromMillisecondsSinceEpoch(profile.birthday)
            : null,
        genderId: profile.genderId,
        prefectureId: profile.prefectureId,
        description: profile.description,
        hobby: profile.hobby,
        favoriteType: profile.favoriteType,
      );

  String ageWithPref(List<MasterLabelState> prefectures) {
    if (birthday == null) {
      return '';
    }
    // ignore: lines_longer_than_80_chars
    return '${DateHelper.calculateAge(birthday)} ${prefectures.firstWhere((element) => element.id == prefectureId).text}';
  }
}
