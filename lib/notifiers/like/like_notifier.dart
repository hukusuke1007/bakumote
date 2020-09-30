import 'dart:async';

import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'like_state.dart';

final likeNotifierProvider = StateNotifierProvider.family
    .autoDispose<LikeNotifier, User>(
        (ref, user) => LikeNotifier(ref.read, user));

class LikeNotifier extends StateNotifier<LikeState> with LocatorMixin {
  LikeNotifier(
    this._read,
    this.user,
  ) : super(LikeState()) {
    load();
  }

  final Reader _read;
  final User user;

  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);

  Future load() async {
    final data = bakumoteRepository.loadLike(user.id);
    state = state.copyWith(isLiked: data != null);
  }

  Future onLiked() async {
    if (state.isLiked) {
      return;
    }
    bakumoteRepository.saveLike(user);
    state = state.copyWith(isLiked: !state.isLiked);
  }
}
