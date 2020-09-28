import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'like_state.dart';

final likeNotifierProvider = StateNotifierProvider.autoDispose<LikeNotifier>(
    (ref) => LikeNotifier(ref.read));

class LikeNotifier extends StateNotifier<LikeState> with LocatorMixin {
  LikeNotifier(
    this._read,
  ) : super(LikeState()) {
    _configure();
  }

  final Reader _read;

  Future _configure() async {
    await load();
  }

  Future load() async {
    // TODO(shohei): stub
    state = state.copyWith(isLiked: false);
  }

  Future onLiked() async {
    // TODO(shohei): not implement
    state = state.copyWith(isLiked: !state.isLiked);
  }
}
