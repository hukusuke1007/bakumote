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
    try {
      state = state.copyWith(isLoading: true);
      final prefecturesRaw =
          await resourceRepository.loadJson('assets/json/prefectures.json');
      final genderRaw =
          await resourceRepository.loadJson('assets/json/gender.json');
      state = state.copyWith(
          prefectures: _decode(prefecturesRaw),
          gender: _decode(genderRaw),
          isLoading: false);
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(isLoading: false);
    }
  }

  List<MasterLabelState> _decode(Map<String, dynamic> raw) {
    final list = raw['data'] as List<dynamic>;
    return list
        .map(
          (dynamic e) => MasterLabelState(
            id: e['id'] as int,
            ja: e['ja'] as String,
            en: e['en'] as String,
          ),
        )
        .toList();
  }
}
