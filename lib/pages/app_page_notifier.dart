import 'dart:async';

import 'package:bakumote/pages/search/search_page.dart';
import 'package:bakumote/pages/setting/setting_page.dart';
import 'package:bakumote/pages/talk_list/talk_list_page.dart';
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

class AppPageNotifier extends StateNotifier<AppPageState> with LocatorMixin {
  AppPageNotifier(
    this._read,
  ) : super(const AppPageState(
          selectedIndex: 0,
        )) {
    _configure();
  }

  final Reader _read;

  final List<TabWidgetPage> widgetList = [
    SearchPage(),
    TalkListPage(),
    SettingPage(),
  ];

  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

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

  Future _configure() async {
    // nothing
  }
}
