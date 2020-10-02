import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/app_info/app_info_notifier.dart';
import 'package:bakumote/notifiers/bakumote/bakumote_module.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/notification/notification_notifier.dart';
import 'package:bakumote/notifiers/rooms/rooms_notifier.dart';
import 'package:bakumote/pages/edit_profile/edit_profile_page.dart';
import 'package:bakumote/providers/navigator.dart';
import 'package:bakumote/widgets/image_cropper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

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
  RoomsNotifier get roomNotifier => _read(roomsNotifierProvider);
  BakumoteModule get bakumoteModule => _read(bakumoteModuleProvider);

  Future onShowEditProfile() =>
      _read(navigatorKeyProvider).currentState.push<void>(
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

  Future<void> onNotificationTest() async {
    final provider = _read(notificationNotifierProvider);
    await provider.showDelayed(
        title: 'テスト', body: 'あああああ', duration: const Duration(seconds: 1));
  }

  Future<void> onShowSetting() => openAppSettings();

  Future<void> onReset() async {
    final context = _read(navigatorKeyProvider).currentContext;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: context.l10n.dataReset,
      message: context.l10n.confirmDataReset,
    );
    if (result == OkCancelResult.ok) {
      bakumoteModule.reset();
      roomNotifier.resetCache();
    }
  }

  Future _configure() async {
    await appInfoNotifier.load();
  }
}
