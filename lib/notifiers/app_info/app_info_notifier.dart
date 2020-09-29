import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';

import 'app_info_state.dart';

final appInfoNotifierProvider =
    StateNotifierProvider<AppInfoNotifier>((ref) => AppInfoNotifier(ref.read));

class AppInfoNotifier extends StateNotifier<AppInfoState> with LocatorMixin {
  AppInfoNotifier(
    this._read,
  ) : super(AppInfoState());

  final Reader _read;

  Future load() async {
    final packageInfo = await PackageInfo.fromPlatform();
    state = state.copyWith(appVersion: packageInfo.version);
  }
}
