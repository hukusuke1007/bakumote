import 'package:bakumote/helpers/date_helper.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
abstract class UsersState with _$UsersState {
  factory UsersState({
    List<User> users,
    @Default(false) bool isLoading,
  }) = _UsersState;
  UsersState._();

  static String getNameAgePref(
    User user,
    List<MasterLabelState> prefectures,
  ) {
    final prefecture = prefectures
        .firstWhere((element) => element.id == user.prefectureId)
        .text;
    if (user.birthday == null) {
      return '${user.name} $prefecture';
    }
    // ignore: lines_longer_than_80_chars
    return '${user.name} ${DateHelper.calculateAge(user.birthday)} $prefecture';
  }
}
