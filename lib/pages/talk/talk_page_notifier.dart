import 'dart:async';

import 'package:bakumote/notifiers/bakumote/bakumote_module.dart';
import 'package:bakumote/notifiers/messages/messages_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/rooms/rooms_notifier.dart';
import 'package:bakumote/notifiers/rooms/rooms_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'talk_page_notifier.freezed.dart';

final talkPageNotifierProvider = StateNotifierProvider.family
    .autoDispose<TalkPageNotifier, RoomState>(
        (ref, roomState) => TalkPageNotifier(ref.read, roomState));

@freezed
abstract class TalkPageState with _$TalkPageState {
  const factory TalkPageState({
    String myProfileId,
    @Default(false) bool isLoading,
  }) = _TalkPageState;
}

class TalkPageNotifier extends StateNotifier<TalkPageState> with LocatorMixin {
  TalkPageNotifier(
    this._read,
    this.roomState,
  ) : super(const TalkPageState()) {
    Future<void>.delayed(Duration.zero, _configure);
  }

  final Reader _read;
  final RoomState roomState;

  MessagesNotifier get messagesNotifier =>
      _read(messagesNotifierProvider(roomState));
  RoomsNotifier get roomsNotifier => _read(roomsNotifierProvider);
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);
  BakumoteModule get bakumoteModule => _read(bakumoteModuleProvider);

  final ScrollController scrollController = ScrollController();
  final RefreshController refreshController = RefreshController();
  final TextEditingController textEditingController = TextEditingController();

  StreamSubscription _disposer;

  @override
  Future<void> dispose() async {
    super.dispose();
    await _disposer?.cancel();
  }

  void loadPaging() {
    messagesNotifier.loadMore();
    refreshController.loadComplete();
  }

  Future onSend() async {
    await bakumoteModule.sendMessage(
      myProfileId: state.myProfileId,
      friendId: roomState.userId,
      roomId: roomState.roomId,
      text: textEditingController.text,
    );
    textEditingController.clear();
  }

  void _configure() {
    messagesNotifier.load();
    roomsNotifier.resetUnreadCount(roomState.roomId);
    state = state.copyWith(
      myProfileId: myProfileNotifier.state.profile.id,
    );
    _fetch();
  }

  void _fetch() {
    _disposer = messagesNotifier.fetchMessage.listen((event) {
      if (event.userId != state.myProfileId) {
        roomsNotifier.resetUnreadCount(roomState.roomId);
      }
    });
  }
}
