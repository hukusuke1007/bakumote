import 'dart:async';

import 'package:bakumote/notifiers/rooms/rooms_notifier.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'talk_list_page_notifier.freezed.dart';

final talkListPageNotifierProvider =
    StateNotifierProvider.autoDispose<TalkListPageNotifier>(
        (ref) => TalkListPageNotifier(ref.read));

@freezed
abstract class TalkListPageState with _$TalkListPageState {
  const factory TalkListPageState({
    @Default(false) bool isLoading,
  }) = _TalkListPageState;
}

class TalkListPageNotifier extends StateNotifier<TalkListPageState>
    with LocatorMixin {
  TalkListPageNotifier(
    this._read,
  ) : super(const TalkListPageState()) {
    Future<void>.delayed(Duration.zero, _configure);
  }

  final Reader _read;

  RoomsNotifier get roomsNotifier => _read(roomsNotifierProvider);

  final ScrollController scrollController = ScrollController();
  final RefreshController refreshController = RefreshController();

  Future reload() async {
    refreshController.refreshCompleted();
    // TODO(shohei): not implement.
  }

  Future loadPaging() async {
    refreshController.loadComplete();
    // TODO(shohei): not implement.
  }

  Future _configure() async {
    await roomsNotifier.load();
  }
}
