import 'dart:async';

import 'package:bakumote/notifiers/rooms/rooms_state.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'messages_state.dart';

final messagesNotifierProvider = StateNotifierProvider.family
    .autoDispose<MessagesNotifier, RoomState>(
        (ref, roomState) => MessagesNotifier(ref.read, roomState));

class MessagesNotifier extends StateNotifier<MessagesState> with LocatorMixin {
  MessagesNotifier(
    this._read,
    this.roomState,
  ) : super(MessagesState(messages: []));

  final Reader _read;
  final RoomState roomState;
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProviderAutoDispose);

  final _limit = 20;
  int _offset = 0;

  @override
  Future<void> dispose() async {
    super.dispose();
    await bakumoteRepository.dispose();
  }

  Future<void> load({
    int offset = 0,
  }) async {
    // TODO(shohei): stub
    if (state.isLoading) {
      return;
    }
    try {
      state = state.copyWith(isLoading: true);
      final messages = bakumoteRepository.loadMessages(
        roomId: roomState.roomId,
        limit: _limit,
        offset: offset,
      );
      if (messages.isNotEmpty) {
        final messageStateList = state.messages.toList();
        if (offset == 0) {
          messageStateList.clear();
        }
        messageStateList.addAll(
          messages.map(
            (e) => MessageState(
              messageId: e.messageId,
              userId: e.userId,
              text: e.text,
              createdAt: DateTime.fromMillisecondsSinceEpoch(e.createdAt),
              isRead: !e.isUnread,
            ),
          ),
        );
        state = state.copyWith(
          messages: messageStateList,
          isLoading: false,
        );
        _offset += _limit;
      } else {
        state = state.copyWith(isLoading: false);
      }
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> loadMore() async {
    await load(offset: _offset);
  }

  Future save({
    @required String text,
    @required String userId,
    bool isRead = false,
  }) async {
    print('save $text');
    if (text == null || text.isEmpty) {
      return;
    }
    final messageId = bakumoteRepository.saveMessage(
        userId: userId, text: text, roomId: roomState.roomId);

    final now = DateTime.now();
    state = state.copyWith(
        messages: [
      MessageState(
        messageId: messageId,
        userId: userId,
        text: text,
        createdAt: now,
        isRead: isRead,
      ),
      ...state.messages,
    ].toList());
  }
}
