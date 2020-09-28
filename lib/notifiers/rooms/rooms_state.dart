import 'package:freezed_annotation/freezed_annotation.dart';

import 'room_state.dart';

part 'rooms_state.freezed.dart';

@freezed
abstract class RoomsState with _$RoomsState {
  factory RoomsState({
    List<RoomState> rooms,
  }) = _RoomsState;
}
