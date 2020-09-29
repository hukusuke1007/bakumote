import 'package:freezed_annotation/freezed_annotation.dart';

part 'masters_state.freezed.dart';

@freezed
abstract class MastersState with _$MastersState {
  factory MastersState({
    List<MasterLabelState> prefectures,
    List<MasterLabelState> gender,
    @Default(false) bool isLoading,
  }) = _MastersState;
  MastersState._();

  int getId(String text, List<MasterLabelState> masterLabels) {
    if (masterLabels.isEmpty) {
      return -1;
    }
    final data = masterLabels.firstWhere((element) => element.text == text,
        orElse: () => null);
    if (data == null) {
      return -1;
    }
    return data.id;
  }
}

@freezed
abstract class MasterLabelState with _$MasterLabelState {
  factory MasterLabelState({
    int id,
    String ja,
    String en,
  }) = _MasterLabelState;
  MasterLabelState._();
  String get text => ja;
}
