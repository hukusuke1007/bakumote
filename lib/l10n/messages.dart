import 'package:intl/intl.dart';

mixin Messages {
  String get title => Intl.message('爆モテ', name: 'title');
  String get tabSearch => Intl.message('さがす', name: 'tabSearch');
  String get tabTalkList => Intl.message('やりとり', name: 'tabTalkList');
  String get tabSetting => Intl.message('マイページ', name: 'tabSetting');
  String get hobby => Intl.message('趣味', name: 'hobby');
  String get favoriteType => Intl.message('好きなタイプ', name: 'favoriteType');
  String get like => Intl.message('いいね', name: 'like');
  String get liked => Intl.message('いいね済み', name: 'liked');
}
