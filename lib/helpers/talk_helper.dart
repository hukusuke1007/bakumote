import 'package:bakumote/extensions/index.dart';
import 'package:flutter/material.dart';

import 'date_helper.dart';

class TalkHelper {
  const TalkHelper._();

  static String getDateLabel(BuildContext context, DateTime date) {
    final diff = DateHelper.diffDays(date, DateTime.now());
    if (diff == 0) {
      return date.format(format: 'HH:mm');
    } else if (diff == -1) {
      return context.l10n.yesterday;
    } else if (diff == -2) {
      return context.l10n.dayBeforeYesterday;
    }
    return date.format();
  }
}
