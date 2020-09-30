import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

extension ContextExtension on BuildContext {
  L10n get l10n => L10n.of(this);
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;
  bool get isSafeArea => MediaQuery.of(this).viewPadding.bottom >= 34.0;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  void hideKeyboard() => FocusScope.of(this).unfocus();
  void dismiss<T extends Object>([T result]) =>
      Navigator.of(this).pop<T>(result);
}
