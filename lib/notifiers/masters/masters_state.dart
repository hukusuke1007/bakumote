import 'package:freezed_annotation/freezed_annotation.dart';

part 'masters_state.freezed.dart';

@freezed
abstract class MastersState with _$MastersState {
  factory MastersState({
    List<MasterLabelState> prefectures,
    List<MasterLabelState> gender,
    @Default(false) bool isLoading,
  }) = _MastersState;
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
