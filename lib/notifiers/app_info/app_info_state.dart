import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_state.freezed.dart';

@freezed
abstract class AppInfoState with _$AppInfoState {
  factory AppInfoState({
    @Default('') String appVersion,
  }) = _AppInfoState;
}
