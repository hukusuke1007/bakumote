import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_state.freezed.dart';

@freezed
abstract class MessagesState with _$MessagesState {
  factory MessagesState({
    List<MessageState> messages,
    @Default(false) bool isLoading,
  }) = _MessagesState;
}

@freezed
abstract class MessageState with _$MessageState {
  factory MessageState({
    String messageId,
    String userId,
    String text,
    DateTime createdAt,
    @Default(false) bool isRead,
  }) = _MessageState;
}
