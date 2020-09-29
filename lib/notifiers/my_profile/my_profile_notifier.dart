import 'dart:async';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'my_profile_state.dart';

final myProfileNotifierProvider = StateNotifierProvider<MyProfileNotifier>(
    (ref) => MyProfileNotifier(ref.read));

class MyProfileNotifier extends StateNotifier<MyProfileState>
    with LocatorMixin {
  MyProfileNotifier(
    this._read,
  ) : super(MyProfileState());

  final Reader _read;

  Future load() async {
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(isLoading: true);
    // TODO(shohei): not implement
    state = state.copyWith(
        name: 'しょうへい', age: 31, prefectures: '大阪', isLoading: false);
  }

  Future saveProfileImage(File file) async {
    state = state.copyWith(image: file);
    // TODO(shohei): not implement
  }

  Future saveProfile({
    String name,
    String prefectures,
    String hobby,
    String favoriteType,
  }) async {
    state = state.copyWith(
        name: name,
        prefectures: prefectures,
        hobby: hobby,
        favoriteType: favoriteType);
    // TODO(shohei): not implement
  }

  Future saveBirthday(DateTime date) async {
    // TODO(shohei): not implement
  }
}
