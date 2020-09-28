import 'dart:async';

import 'package:bakumote/notifiers/messages/messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'talk_page_notifier.freezed.dart';

final talkPageNotifierProvider =
    StateNotifierProvider.autoDispose<TalkPageNotifier>(
        (ref) => TalkPageNotifier(ref.read));

@freezed
abstract class TalkPageState with _$TalkPageState {
  const factory TalkPageState({
    @Default(false) bool isLoading,
  }) = _TalkPageState;
}

class TalkPageNotifier extends StateNotifier<TalkPageState> with LocatorMixin {
  TalkPageNotifier(
    this._read,
  ) : super(const TalkPageState()) {
    _configure();
  }

  final Reader _read;

  MessagesNotifier get messagesNotifier => _read(messagesNotifierProvider);

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
    await messagesNotifier.save(text: textEditingController.text);
    textEditingController.clear();
  }

  Future _configure() async {
    await messagesNotifier.load();
  }
}
