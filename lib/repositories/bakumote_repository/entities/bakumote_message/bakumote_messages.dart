import 'package:freezed_annotation/freezed_annotation.dart';

part 'bakumote_messages.freezed.dart';
part 'bakumote_messages.g.dart';

@freezed
abstract class BakumoteMessages with _$BakumoteMessages {
  factory BakumoteMessages({
    @required List<BakumoteMessage> greetings,
    @required List<BakumoteMessage> questions,
    @required List<BakumoteMessage> thoughts,
  }) = _BakumoteMessages;
}

@freezed
abstract class BakumoteMessage with _$BakumoteMessage {
  factory BakumoteMessage({
    @required int id,
    @required String text,
  }) = _BakumoteMessage;

  factory BakumoteMessage.fromJson(Map<String, dynamic> json) =>
      _$BakumoteMessageFromJson(json);
}
