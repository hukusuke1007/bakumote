import 'dart:async';

import 'package:bakumote/repositories/resource_repository/resource_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'masters_state.dart';

final mastersNotifierProvider =
    StateNotifierProvider<MastersNotifier>((ref) => MastersNotifier(ref.read));

class MastersNotifier extends StateNotifier<MastersState> with LocatorMixin {
  MastersNotifier(
    this._read,
  ) : super(MastersState(prefectures: [], gender: []));

  final Reader _read;

  ResourceRepository get resourceRepository =>
      _read(resourceRepositoryProvider);

  Future load() async {
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(isLoading: true);

    final prefecturesRaw =
        await resourceRepository.loadJson('assets/json/prefectures.json');
    final genderRaw =
        await resourceRepository.loadJson('assets/json/gender.json');

    state = state.copyWith(
        prefectures: _decode(prefecturesRaw),
        gender: _decode(genderRaw),
        isLoading: false);
  }

  List<MasterLabelState> _decode(Map<String, dynamic> raw) {
    final list = raw['data'] as List<dynamic>;
    final result = <MasterLabelState>[];
    for (final item in list.toList()) {
      result.add(
        MasterLabelState(
            id: item['id'] as int,
            ja: item['ja'] as String,
            en: item['ja'] as String),
      );
    }
    return result;
  }
}
