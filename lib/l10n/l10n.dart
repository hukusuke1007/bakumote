import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../l10n/messages.dart';
import 'l10n_delegate.dart';
import 'messages_all.dart';

/// Thank you https://medium.com/flutter-jp/intl-beb5b9e8ee73
class L10n with Messages {
  static Future<L10n> load(Locale locale) async {
    final name = locale.countryCode == null || locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    // 言語リソース読み込み
    await initializeMessages(localeName);
    // デフォルト言語を設定
    Intl.defaultLocale = localeName;

    // 自身を返す
    return L10n();
  }

  // Widgetツリーから自身を取り出す
  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = L10nDelegate();
}
