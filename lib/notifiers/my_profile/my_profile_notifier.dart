import 'dart:async';
import 'dart:io';

import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'my_profile_state.dart';

final myProfileNotifierProvider = StateNotifierProvider<MyProfileNotifier>(
    (ref) => MyProfileNotifier(ref.read));

class MyProfileNotifier extends StateNotifier<MyProfileState>
    with LocatorMixin {
  MyProfileNotifier(
    this._read,
  ) : super(MyProfileState(profile: Profile()));

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
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);

  bool get _isUpdate => state.profile.id != null;

  final _myProfile = BehaviorSubject<MyProfileState>.seeded(null);
  ValueStream<MyProfileState> get myProfile => _myProfile;

  void load() {
    final profile = bakumoteRepository.loadProfile();
    if (profile != null) {
      state = state.copyWith(
        profile: Profile.fromEntity(profile).copyWith(
          image: profile.imageName != null
              ? bakumoteRepository.loadImage(profile.imageName)
              : null,
        ),
      );
    }
  }

  Future saveProfileImage(File file) async {
    final userId = bakumoteRepository.saveProfileImage(file);
    state = state.copyWith(
        profile: state.profile.copyWith(id: userId, image: file));
  }

  Future saveProfile({
    String name,
    DateTime birthday,
    int genderId,
    int prefectureId,
    String hobby,
    String favoriteType,
  }) async {
    final userId = bakumoteRepository.saveProfile(state.profile);
    state = state.copyWith(
      profile: state.profile.copyWith(
        id: userId,
        name: name,
        birthday: birthday,
        genderId: genderId,
        prefectureId: prefectureId,
        hobby: hobby ?? '',
        favoriteType: favoriteType ?? '',
      ),
    );
  }
}
