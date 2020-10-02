import 'dart:async';

import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/bakumote/bakumote_module.dart';
import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/notification/notification_notifier.dart';
import 'package:bakumote/notifiers/rooms/rooms_notifier.dart';
import 'package:bakumote/notifiers/users/users_notifier.dart';
import 'package:bakumote/pages/edit_profile/edit_profile_page.dart';
import 'package:bakumote/providers/navigator.dart';
import 'package:bakumote/widgets/dialog/matching_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_notifier.freezed.dart';

final appNotifierProvider =
    StateNotifierProvider<AppNotifier>((ref) => AppNotifier(ref.read));

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(true) bool isLoading,
  }) = _AppState;
}

class AppNotifier extends StateNotifier<AppState>
    with LocatorMixin, WidgetsBindingObserver {
  AppNotifier(
    this._read,
  ) : super(const AppState()) {
    _configure();
  }
  final Reader _read;

  MastersNotifier get masterNotifier => _read(mastersNotifierProvider);
  UsersNotifier get usersNotifier => _read(usersNotifierProvider);
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);
  RoomsNotifier get roomsNotifier => _read(roomsNotifierProvider);
  BakumoteModule get bakumoteModule => _read(bakumoteModuleProvider);
  NotificationNotifier get notificationNotifier =>
      _read(notificationNotifierProvider);

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        _background();
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  Future<void> _background() async {
    final user = await bakumoteModule.createRoomAndNewMessageFromFriend();
    if (user != null) {
      final context = _read(navigatorKeyProvider).currentContext;
      await notificationNotifier.showDelayed(
        title: context.l10n.notificationMatchingTitle,
        body: context.l10n.notificationMatchingBody(user.name),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future _configure() async {
    // 起動時の読み込みはここで実施
    await masterNotifier.load();
    await bakumoteModule.load();
    await usersNotifier.load();
    await notificationNotifier.configure();
    myProfileNotifier.load();
    if (myProfileNotifier.state.profile.id == null) {
      await _read(navigatorKeyProvider).currentState.push<void>(
            CupertinoPageRoute(
              builder: (BuildContext context) => const EditProfilePage(
                isEnableDismiss: false,
              ),
              fullscreenDialog: true,
            ),
          );
    }
    await roomsNotifier.load();
    roomsNotifier.loadUnreadCount();
    state = state.copyWith(isLoading: false);
    await notificationNotifier.requestPermissions();
    _fetch();
    WidgetsBinding.instance.addObserver(this);
  }

  void _fetch() {
    roomsNotifier.fetchNewRoom.listen((event) {
      showMatchingDialog(
        _read(navigatorKeyProvider).currentContext,
        image: Image.asset(
          event.imageName,
          fit: BoxFit.fitWidth,
        ),
        title: event.name,
      );
    });
  }
}
