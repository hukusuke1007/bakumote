import 'dart:io';

import 'package:bakumote/helpers/date_helper.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_state.freezed.dart';

@freezed
abstract class MyProfileState with _$MyProfileState {
  factory MyProfileState({
    String id,
    @Default('') String name,
    DateTime birthday,
    @Default(0) int genderId,
    @Default(0) int prefectureId,
    File image,
    @Default('') String description,
    @Default('') String hobby,
    @Default('') String favoriteType,
    @Default(false) bool isLoading,
  }) = _MyProfileState;
  MyProfileState._();

  String ageWithPref(List<MasterLabelState> prefectures) {
    if (birthday == null) {
      return '';
    }
    // ignore: lines_longer_than_80_chars
    return '${DateHelper.calculateAge(birthday)} ${prefectures.firstWhere((element) => element.id == prefectureId).text}';
  }
}
