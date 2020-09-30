import 'dart:async';

import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/widgets/image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_profile_page_notifier.freezed.dart';

final editProfilePageNotifierProvider =
    StateNotifierProvider.autoDispose<EditProfilePageNotifier>(
        (ref) => EditProfilePageNotifier(ref.read));

@freezed
abstract class EditProfilePageState with _$EditProfilePageState {
  const factory EditProfilePageState({
    DateTime birthday,
    @Default(0) int genderId,
    @Default(0) int prefectureId,
  }) = _EditProfilePageState;
}

class EditProfilePageNotifier extends StateNotifier<EditProfilePageState>
    with LocatorMixin {
  EditProfilePageNotifier(
    this._read,
  ) : super(const EditProfilePageState()) {
    Future<void>.delayed(Duration.zero, _configure);
  }

  final Reader _read;
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);
  MastersNotifier get mastersNotifier => _read(mastersNotifierProvider);
  MastersState get master => mastersNotifier.state;

  final nameTextEditController = TextEditingController();
  final birthdayEditingController = TextEditingController();
  final genderEditingController = TextEditingController();
  final prefectureEditingController = TextEditingController();
  final descriptionTextEditController = TextEditingController();
  final hobbyTextEditController = TextEditingController();
  final favoriteTypeTextEditController = TextEditingController();

  Future onTapCamera() async {
    final file = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    if (file == null) {
      return;
    }
    final image = await cropAvatar(file.path);
    await myProfileNotifier.saveProfileImage(image);
  }

  Future onTapGallery() async {
    final file = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (file == null) {
      return;
    }
    final image = await cropAvatar(file.path);
    await myProfileNotifier.saveProfileImage(image);
  }

  // ignore: use_setters_to_change_properties
  void onSaveBirthday(DateTime value) {
    state = state.copyWith(birthday: value);
    birthdayEditingController.text = value.format(format: 'yyyy.MM.dd');
  }

  // ignore: use_setters_to_change_properties
  void onSaveGender(int value) {
    state = state.copyWith(genderId: value);
    genderEditingController.text =
        master.gender.firstWhere((element) => element.id == value).text;
  }

  // ignore: use_setters_to_change_properties
  void onSavePrefecture(int value) {
    state = state.copyWith(prefectureId: value);
    prefectureEditingController.text =
        master.prefectures.firstWhere((element) => element.id == value).text;
  }

  Future onSaveProfile(BuildContext context) async {
    await myProfileNotifier.saveProfile(
      name: nameTextEditController.text,
      birthday: state.birthday,
      genderId: state.genderId,
      prefectureId: state.prefectureId,
      hobby: hobbyTextEditController.text,
      favoriteType: favoriteTypeTextEditController.text,
    );
    Navigator.of(context).pop();
  }

  Future _configure() async {
    final profile = myProfileNotifier.state.profile;
    nameTextEditController.text = profile.name;
    birthdayEditingController.text = profile.birthday != null
        ? profile.birthday.format(format: 'yyyy.MM.dd')
        : '';
    hobbyTextEditController.text = profile.hobby;
    favoriteTypeTextEditController.text = profile.favoriteType;
    genderEditingController.text = master.gender
        .firstWhere((element) => element.id == profile.genderId)
        .text;
    prefectureEditingController.text = master.prefectures
        .firstWhere((element) => element.id == profile.prefectureId)
        .text;
    state = state.copyWith(
      birthday: profile.birthday,
      genderId: profile.genderId,
      prefectureId: profile.prefectureId,
    );
  }
}
