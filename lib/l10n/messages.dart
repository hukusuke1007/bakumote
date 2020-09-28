import 'package:intl/intl.dart';

mixin Messages {
  String get title => Intl.message('爆モテ', name: 'title');
  String get tabSearch => Intl.message('さがす', name: 'tabSearch');
  String get tabTalkList => Intl.message('やりとり', name: 'tabTalkList');
  String get tabSetting => Intl.message('マイページ', name: 'tabSetting');
}
