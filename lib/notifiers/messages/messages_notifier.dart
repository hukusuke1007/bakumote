import 'dart:async';

import 'package:bakumote/helpers/date_helper.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'messages_state.dart';

final messagesNotifierProvider =
    StateNotifierProvider.autoDispose<MessagesNotifier>(
        (ref) => MessagesNotifier(ref.read));

class MessagesNotifier extends StateNotifier<MessagesState> with LocatorMixin {
  MessagesNotifier(
    this._read,
  ) : super(MessagesState(messages: []));

  final Reader _read;
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
    state = state.copyWith(isLoading: true);
    final now = DateTime.now();
    final list = List.generate(
      2,
      (index) => MessageState(
        messageId: '$index',
        userId: '$index',
        text: 'イケメンですね！',
        createdAt: DateHelper.setDate(
            year: now.year, month: now.month, days: now.day - index),
        isRead: !(index < 3),
      ),
    );
    print('list ${list.length}');
    state = state.copyWith(messages: list, isLoading: false);
  }

  Future<void> loadMore() async {
    await load(offset: _offset);
  }

  Future save({String text}) async {
    print('save $text');
    if (text == null || text.isEmpty) {
      return;
    }
    final now = DateTime.now();
    print(state.messages.length);
    // TODO(shohei): not implement
    state = state.copyWith(
        messages: [
      MessageState(
        messageId: '${state.messages.length}',
        userId: '${state.messages.length}',
        text: text,
        createdAt: now,
        isRead: false,
      ),
      ...state.messages,
    ].toList());
  }
}
