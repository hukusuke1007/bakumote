import 'dart:async';

import 'package:bakumote/notifiers/app_info/app_info_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/pages/edit_profile/edit_profile_page.dart';
import 'package:bakumote/widgets/image_cropper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'setting_page_notifier.freezed.dart';

final settingPageNotifierProvider =
    StateNotifierProvider.autoDispose<SettingPageNotifier>(
        (ref) => SettingPageNotifier(ref.read));

@freezed
abstract class SettingPageState with _$SettingPageState {
  const factory SettingPageState({
    @Default(false) bool isLoading,
  }) = _SettingPageState;
}

class SettingPageNotifier extends StateNotifier<SettingPageState>
    with LocatorMixin {
  SettingPageNotifier(
    this._read,
  ) : super(const SettingPageState()) {
    _configure();
  }

  final Reader _read;
  AppInfoNotifier get appInfoNotifier => _read(appInfoNotifierProvider);
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);

  Future onShowEditProfile(BuildContext context) =>
      Navigator.of(context, rootNavigator: true).push<void>(
        CupertinoPageRoute(
          builder: (BuildContext context) => const EditProfilePage(),
          fullscreenDialog: true,
        ),
      );

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

  Future _configure() async {
    await myProfileNotifier.load();
    await appInfoNotifier.load();
  }
}
