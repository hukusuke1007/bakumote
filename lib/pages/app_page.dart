import 'package:bakumote/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'app_page_notifier.dart';

class AppPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = appPageNotifierProvider;
    final notifier = useProvider(provider);
    return WillPopScope(
      onWillPop: notifier.onWillPop,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            notifier.buildOffstageNavigator(0),
            notifier.buildOffstageNavigator(1),
            notifier.buildOffstageNavigator(2),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(context.l10n.tabSearch),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text(context.l10n.tabTalkList),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              title: Text(context.l10n.tabSetting),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex:
              useProvider(provider.state.select((AppPageState state) => state))
                  .selectedIndex,
          onTap: notifier.onItemTapped,
        ),
      ),
    );
  }
}
