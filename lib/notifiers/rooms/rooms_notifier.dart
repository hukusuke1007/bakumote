import 'dart:async';

import 'package:bakumote/notifiers/rooms/room_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'rooms_state.dart';

final roomsNotifierProvider =
    StateNotifierProvider<RoomsNotifier>((ref) => RoomsNotifier(ref.read));

class RoomsNotifier extends StateNotifier<RoomsState> with LocatorMixin {
  RoomsNotifier(
    this._read,
  ) : super(RoomsState(rooms: []));

  final Reader _read;

  Future load() async {
    // TODO(shohei): stub
    final list = List.generate(
      100,
      (index) => RoomState(
        roomId: '$index',
        userId: 'user_$index',
        name: 'かおり',
        latestMessage: 'イケメンですね！',
        latestDate: DateTime.now(),
        unreadCount: index < 3 ? 100 : 0,
      ),
    );
    print('list ${list.length}');
    state = state.copyWith(rooms: list);
  }
}
