import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_state.freezed.dart';

@freezed
abstract class LikeState with _$LikeState {
  factory LikeState({
    String userId,
    @Default(false) bool isLiked,
  }) = _LikeState;
}
