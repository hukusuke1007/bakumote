// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  static m0(value) => "${value} さんとマッチングしました！メッセージを送ってみましょう😊";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appVersion" : MessageLookupByLibrary.simpleMessage("アプリバージョン"),
    "birth" : MessageLookupByLibrary.simpleMessage("生年月日"),
    "confirmDataReset" : MessageLookupByLibrary.simpleMessage("データをリセットしますか?"),
    "confirmSettingNotification" : MessageLookupByLibrary.simpleMessage("通知設定を確認"),
    "dataReset" : MessageLookupByLibrary.simpleMessage("データリセット"),
    "dayBeforeYesterday" : MessageLookupByLibrary.simpleMessage("一昨日"),
    "editProfile" : MessageLookupByLibrary.simpleMessage("プロフィール編集"),
    "favoriteType" : MessageLookupByLibrary.simpleMessage("好きなタイプ"),
    "gender" : MessageLookupByLibrary.simpleMessage("性別"),
    "hobby" : MessageLookupByLibrary.simpleMessage("趣味"),
    "like" : MessageLookupByLibrary.simpleMessage("いいね"),
    "liked" : MessageLookupByLibrary.simpleMessage("いいね済み"),
    "matchingDone" : MessageLookupByLibrary.simpleMessage("マッチングしました！"),
    "messagePlaceholder" : MessageLookupByLibrary.simpleMessage("Aa"),
    "name" : MessageLookupByLibrary.simpleMessage("名前"),
    "notificationMatchingBody" : m0,
    "notificationMatchingTitle" : MessageLookupByLibrary.simpleMessage("❤️マッチング❤️"),
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "photoAlbum" : MessageLookupByLibrary.simpleMessage("写真から選択"),
    "photoCamera" : MessageLookupByLibrary.simpleMessage("カメラで撮影"),
    "prefectures" : MessageLookupByLibrary.simpleMessage("都道府県"),
    "required" : MessageLookupByLibrary.simpleMessage("必須"),
    "saveProfile" : MessageLookupByLibrary.simpleMessage("プロフィールを保存"),
    "send" : MessageLookupByLibrary.simpleMessage("送信"),
    "tabSearch" : MessageLookupByLibrary.simpleMessage("さがす"),
    "tabSetting" : MessageLookupByLibrary.simpleMessage("マイページ"),
    "tabTalkList" : MessageLookupByLibrary.simpleMessage("やりとり"),
    "talkList" : MessageLookupByLibrary.simpleMessage("やりとり一覧"),
    "title" : MessageLookupByLibrary.simpleMessage("爆モテ"),
    "today" : MessageLookupByLibrary.simpleMessage("今日"),
    "yesterday" : MessageLookupByLibrary.simpleMessage("昨日")
  };
}
