import 'dart:async';
import 'dart:io';

import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'my_profile_state.dart';

final myProfileNotifierProvider = StateNotifierProvider<MyProfileNotifier>(
    (ref) => MyProfileNotifier(ref.read));

class MyProfileNotifier extends StateNotifier<MyProfileState>
    with LocatorMixin {
  MyProfileNotifier(
    this._read,
  ) : super(MyProfileState());

  @override
  Future dispose() async {
    super.dispose();
    await _myProfile.close();
  }

  @override
  set state(MyProfileState value) {
    super.state = value;
    _myProfile.add(value);
  }

  final Reader _read;
  MastersNotifier get mastersNotifier => _read(mastersNotifierProvider);

  final _myProfile = BehaviorSubject<MyProfileState>.seeded(null);
  ValueStream<MyProfileState> get myProfile => _myProfile;

  Future load() async {
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(isLoading: true);
    // TODO(shohei): not implement
    state = state.copyWith(
      profile: Profile(
        name: 'しょうへい',
        birthday: DateTime(1988, 10, 7),
        genderId: 0,
        prefectureId: 0,
        hobby: 'バスケ',
        favoriteType: '目が大きい',
      ),
      isLoading: false,
    );
  }

  Future saveProfileImage(File file) async {
    state = state.copyWith(profile: state.profile.copyWith(image: file));
    // TODO(shohei): not implement
  }

  Future saveProfile({
    String name,
    DateTime birthday,
    int genderId,
    int prefectureId,
    String hobby,
    String favoriteType,
  }) async {
    state = state.copyWith(
      profile: Profile(
        name: name,
        birthday: birthday,
        genderId: genderId,
        prefectureId: prefectureId,
        hobby: hobby ?? '',
        favoriteType: favoriteType ?? '',
      ),
    );
    // TODO(shohei): not implement
  }

  Future saveBirthday(DateTime date) async {
    // TODO(shohei): not implement
  }
}
