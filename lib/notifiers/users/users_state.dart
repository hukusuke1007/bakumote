import 'package:bakumote/helpers/date_helper.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
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
    DateTime birthday,
    @Default(0) int genderId,
    @Default(0) int prefectureId,
    @Default('') String imageName,
    @Default('') String description,
    @Default('') String hobby,
    @Default('') String favoriteType,
  }) = _UserState;
  UserState._();

  String get nameWithAge {
    if (birthday == null) {
      return '$name';
    }
    return '$name ${DateHelper.calculateAge(birthday)}';
  }

  String nameWithAgePref(List<MasterLabelState> prefectures) {
    final prefecture =
        prefectures.firstWhere((element) => element.id == prefectureId).text;
    if (birthday == null) {
      return '$name $prefecture';
    }
    // ignore: lines_longer_than_80_chars
    return '$name ${DateHelper.calculateAge(birthday)} $prefecture';
  }
}
