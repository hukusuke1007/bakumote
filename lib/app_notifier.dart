import 'dart:async';

import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_notifier.freezed.dart';

final appNotifierProvider =
    StateNotifierProvider<AppNotifier>((ref) => AppNotifier(ref.read));

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(true) bool isLoading,
  }) = _AppState;
}

class AppNotifier extends StateNotifier<AppState> with LocatorMixin {
  AppNotifier(
    this._read,
  ) : super(const AppState()) {
    _configure();
  }

  final Reader _read;
  MastersNotifier get masterNotifier => _read(mastersNotifierProvider);
  MyProfileNotifier get myProfileNotifier => _read(myProfileNotifierProvider);

  Future _configure() async {
    // 起動時の読み込みはここで実施
    await masterNotifier.load();
    await myProfileNotifier.load();
    state = state.copyWith(isLoading: false);
  }
}
