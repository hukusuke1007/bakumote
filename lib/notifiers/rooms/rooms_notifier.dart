import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/room.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'rooms_state.dart';

final roomsNotifierProvider =
    StateNotifierProvider<RoomsNotifier>((ref) => RoomsNotifier(ref.read));

class RoomsNotifier extends StateNotifier<RoomsState> with LocatorMixin {
  RoomsNotifier(
    this._read,
  ) : super(RoomsState(rooms: [])) {
    _configure();
  }

  final Reader _read;
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);
  MastersNotifier get masterNotifier => _read(mastersNotifierProvider);

  final _newRoom = PublishSubject<RoomState>();
  Stream<RoomState> get fetchNewRoom => _newRoom;

  @override
  Future<void> dispose() async {
    super.dispose();
    await _newRoom.close();
  }

  Future<void> load() async {
    if (state.isLoading) {
      return;
    }
    try {
      state = state.copyWith(isLoading: true);
      final rooms = bakumoteRepository.loadRooms();
      final roomStateList = <RoomState>[];
      for (final room in rooms) {
        final data = await _roomStateWithRelation(room);
        roomStateList.add(data);
      }
      state = state.copyWith(
        rooms: roomStateList,
        isLoading: false,
        isUnreadRoom:
            roomStateList.indexWhere((element) => element.unreadCount > 0) !=
                -1,
      );
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> loadMore() async {
    // TODO(shohei): not implementation.
  }

  String createRoom(String userId) => bakumoteRepository.createRoom(userId);

  void resetCache() => state = state.copyWith(rooms: [], isUnreadRoom: false);

  void _configure() {
    _fetch();
  }

  void _fetch() {
    bakumoteRepository.fetchRoom.listen((event) async {
      print(event);
      final roomState = await _roomStateWithRelation(event.room);
      if (event.actionType == RoomActionType.create) {
        _newRoom.add(roomState);
        state = state.copyWith(
          rooms: [
            roomState,
            ...state.rooms,
          ],
          isUnreadRoom: true,
        );
      } else if (event.actionType == RoomActionType.updateLatestMessage ||
          event.actionType == RoomActionType.updateUnreadCount) {
        final data = state.rooms
            .map((e) => e.roomId == roomState.roomId ? roomState : e)
            .toList()
              ..sort((a, b) => b.latestMessageAt.compareTo(a.latestMessageAt));
        state = state.copyWith(
          rooms: data,
          isUnreadRoom:
              data.indexWhere((element) => element.unreadCount > 0) != -1,
        );
      }
    });
  }

  Future<RoomState> _roomStateWithRelation(Room room) async {
    final user = await bakumoteRepository.loadUser(room.friendUserId);
    return RoomState(
      roomId: room.roomId,
      userId: user.id,
      name: user.name,
      latestMessage: room.latestMessage,
      latestMessageAt:
          DateTime.fromMillisecondsSinceEpoch(room.latestMessageAt),
      imageName: user.imagePath,
      unreadCount: room.unreadCount,
    );
  }
}
