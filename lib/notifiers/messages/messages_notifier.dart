import 'dart:async';

import 'package:bakumote/notifiers/rooms/rooms_state.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'messages_state.dart';

final messagesNotifierProvider = StateNotifierProvider.family
    .autoDispose<MessagesNotifier, RoomState>(
        (ref, roomState) => MessagesNotifier(ref.read, roomState));

class MessagesNotifier extends StateNotifier<MessagesState> with LocatorMixin {
  MessagesNotifier(
    this._read,
    this.roomState,
  ) : super(MessagesState(messages: [])) {
    _configure();
  }

  final Reader _read;
  final RoomState roomState;
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);

  StreamSubscription _disposer;

  final _fetchMessage = PublishSubject<MessageState>();
  Stream<MessageState> get fetchMessage => _fetchMessage;

  final _limit = 20;
  int _offset = 0;

  @override
  Future<void> dispose() async {
    super.dispose();
    await _disposer?.cancel();
    await _fetchMessage.close();
  }

  Future<void> load({
    int offset = 0,
  }) async {
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

  void _configure() {
    _fetch();
  }

  void _fetch() {
    _disposer = bakumoteRepository.fetchMessage
        .where((event) => event != null)
        .listen((event) {
      print('roomId: ${event.roomId}, messageId: ${event.messageId}');
      final messageState = MessageState(
        messageId: event.messageId,
        userId: event.userId,
        text: event.text,
        createdAt: DateTime.fromMillisecondsSinceEpoch(event.createdAt),
        isRead: event.isUnread,
      );
      state = state.copyWith(
          messages: [
        messageState,
        ...state.messages,
      ].toList());
      _fetchMessage.add(messageState);
    });
  }
}
