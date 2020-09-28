import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_state.freezed.dart';

@freezed
abstract class RoomsState with _$RoomsState {
  factory RoomsState({
    List<RoomState> rooms,
    @Default(false) bool isLoading,
  }) = _RoomsState;
}

@freezed
abstract class RoomState with _$RoomState {
  factory RoomState({
    String roomId,
    String userId,
    String name,
    String imageName,
    String latestMessage,
    DateTime latestDate,
    @Default(0) int unreadCount,
  }) = _RoomState;
  RoomState._();

  String get unreadLabel {
    return unreadCount > 99 ? '99+' : '$unreadCount';
  }
}
