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
  String get talkList => Intl.message('やりとり一覧', name: 'talkList');
  String get send => Intl.message('送信', name: 'send');
  String get today => Intl.message('今日', name: 'today');
  String get yesterday => Intl.message('昨日', name: 'yesterday');
  String get dayBeforeYesterday =>
      Intl.message('一昨日', name: 'dayBeforeYesterday');
  String get messagePlaceholder =>
      Intl.message('Aa', name: 'messagePlaceholder');
  String get appVersion => Intl.message('アプリバージョン', name: 'appVersion');
  String get editProfile => Intl.message('プロフィール編集', name: 'editProfile');
  String get photoCamera => Intl.message('カメラで撮影', name: 'photoCamera');
  String get photoAlbum => Intl.message('写真から選択', name: 'photoAlbum');
  String get name => Intl.message('名前', name: 'name');
  String get gender => Intl.message('性別', name: 'gender');
  String get birth => Intl.message('生年月日', name: 'birth');
  String get prefectures => Intl.message('都道府県', name: 'prefectures');
  String get required => Intl.message('必須', name: 'required');
  String get saveProfile => Intl.message('プロフィールを保存', name: 'saveProfile');
  String get dataReset => Intl.message('データリセット', name: 'dataReset');
  String get confirmDataReset =>
      Intl.message('データをリセットしますか?', name: 'confirmDataReset');
}
