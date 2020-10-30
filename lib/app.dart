import 'package:bakumote/app_notifier.dart';
import 'package:bakumote/pages/app_page.dart';
import 'package:bakumote/providers/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BAKUMOTE',
      navigatorKey: useProvider(navigatorKeyProvider),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        RefreshLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: useProvider(
                  appNotifierProvider.state.select((AppState state) => state))
              .isLoading
          ? Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: const CupertinoActivityIndicator(),
            )
          : AppPage(),
    );
  }
}
