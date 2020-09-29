import 'dart:async';

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
  const factory EditProfilePageState() = _EditProfilePageState;
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

  TextEditingController nameTextEditController = TextEditingController();
  TextEditingController descriptionTextEditController = TextEditingController();
  TextEditingController hobbyTextEditController = TextEditingController();
  TextEditingController favoriteTypeTextEditController =
      TextEditingController();

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

  Future onSaveProfile(BuildContext context) async {
    await myProfileNotifier.saveProfile(
      name: nameTextEditController.text,
      prefecturesId: null,
      birthday: null,
      hobby: hobbyTextEditController.text,
      favoriteType: favoriteTypeTextEditController.text,
    );
    Navigator.of(context).pop();
  }

  Future _configure() async {
    final profile = myProfileNotifier.state;
    nameTextEditController.text = profile.name;
    hobbyTextEditController.text = profile.hobby;
    favoriteTypeTextEditController.text = profile.favoriteType;
  }
}
