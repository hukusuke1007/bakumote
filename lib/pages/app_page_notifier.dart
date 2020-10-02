import 'dart:async';

import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/logger.dart';
import 'package:bakumote/notifiers/bakumote/bakumote_module.dart';
import 'package:bakumote/notifiers/notification/notification_notifier.dart';
import 'package:bakumote/pages/search/search_page.dart';
import 'package:bakumote/pages/setting/setting_page.dart';
import 'package:bakumote/pages/talk_list/talk_list_page.dart';
import 'package:bakumote/providers/navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_tab_navigator.dart';

part 'app_page_notifier.freezed.dart';

final appPageNotifierProvider =
    StateNotifierProvider<AppPageNotifier>((ref) => AppPageNotifier(ref.read));

@freezed
abstract class AppPageState with _$AppPageState {
  const factory AppPageState({
    int selectedIndex,
  }) = _AppPageState;
}

class AppPageNotifier extends StateNotifier<AppPageState>
    with LocatorMixin, WidgetsBindingObserver {
  AppPageNotifier(
    this._read,
  ) : super(const AppPageState(
          selectedIndex: 0,
        )) {
    Future<void>.delayed(Duration.zero, _configure);
  }

  final Reader _read;
  BakumoteModule get bakumoteModule => _read(bakumoteModuleProvider);
  NotificationNotifier get notificationNotifier =>
      _read(notificationNotifierProvider);

  final List<TabWidgetPage> widgetList = [
    const SearchPage(),
    const TalkListPage(),
    const SettingPage(),
  ];

  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

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

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  void onItemTapped(int index) {
    widgetList[index].onBottomNavigationTap();
    state = state.copyWith(selectedIndex: index);
  }

  Future<bool> onWillPop() async {
    final keyTab = navigatorKeys[state.selectedIndex];
    if (keyTab.currentState.canPop()) {
      return !await keyTab.currentState.maybePop();
    }
    return Future.value(true);
  }

  Widget buildOffstageNavigator(int index) {
    return Offstage(
      offstage: index != state.selectedIndex,
      child: TabNavigator(
        navigatorKey: navigatorKeys[index],
        page: widgetList[index],
      ),
    );
  }

  void _configure() {
    WidgetsBinding.instance.addObserver(this);
  }

  Future<void> _background() async {
    logger.info('background selectedTabIndex: ${state.selectedIndex}');
    if (state.selectedIndex != 1) {
      return;
    }
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
}
