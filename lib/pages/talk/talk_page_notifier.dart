import 'dart:async';

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
    _configure();
  }

  final Reader _read;
  final RoomState roomState;

  MessagesNotifier get messagesNotifier =>
      _read(messagesNotifierProvider(roomState));

  RoomsNotifier get roomsNotifier => _read(roomsNotifierProvider);
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);

  final ScrollController scrollController = ScrollController();
  final RefreshController refreshController = RefreshController();
  final TextEditingController textEditingController = TextEditingController();

  Future reload() async {
    refreshController.refreshCompleted();
    // TODO(shohei): not implement.
  }

  Future loadPaging() async {
    refreshController.loadComplete();
    // TODO(shohei): not implement.
  }

  Future onSend() async {
    await messagesNotifier.save(
      text: textEditingController.text,
      userId: state.myProfileId,
    );
    textEditingController.clear();
  }

  Future _configure() async {
    await messagesNotifier.load();
    roomsNotifier.resetUnreadCount(roomState.roomId);
    state = state.copyWith(
      myProfileId: myProfileNotifier.state.profile.id,
    );
  }
}
