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

  final _limit = 20;
  int _offset = 0;

  @override
  Future<void> dispose() async {
    super.dispose();
    await _newRoom.close();
  }

  void loadUnreadCount() {
    final counter = bakumoteRepository.loadCounter();
    print('loadCounter ${counter.unreadCount}');
    state = state.copyWith(
        isUnreadRoom: counter != null && counter.unreadCount > 0);
  }

  void resetUnreadCount(String roomId) {
    bakumoteRepository
      ..updateUnreadCount(roomId, 0)
      ..saveCounter(incrementUnreadCount: -1);
    final counter = bakumoteRepository.loadCounter();
    print('counter ${counter.unreadCount}');
    state = state.copyWith(
        isUnreadRoom: counter != null && counter.unreadCount > 0);
  }

  Future<void> load({
    int offset = 0,
  }) async {
    if (state.isLoading) {
      return;
    }
    try {
      state = state.copyWith(isLoading: true);
      final rooms = bakumoteRepository.loadRooms(
        limit: _limit,
        offset: offset,
      );
      if (rooms.isNotEmpty) {
        final roomStateList = state.rooms.toList();
        if (offset == 0) {
          roomStateList.clear();
        }
        for (final room in rooms) {
          final data = await _roomStateWithRelation(room);
          roomStateList.add(data);
        }
        state = state.copyWith(
          rooms: roomStateList,
          isLoading: false,
        );
        _offset += _limit;
      } else {
        state = state.copyWith(isLoading: false);
      }
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> refresh() async {
    _offset = 0;
    await load();
  }

  Future<void> loadMore() async {
    await load(offset: _offset);
  }

  String createRoom(String userId) => bakumoteRepository.createRoom(userId);

  void resetCache() {
    state = state.copyWith(rooms: [], isUnreadRoom: false);
    _offset = 0;
  }

  void _configure() {
    _fetch();
  }

  void _fetch() {
    bakumoteRepository.fetchRoom.listen((event) async {
      print(event.actionType);
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
        final counter = bakumoteRepository.loadCounter();
        state = state.copyWith(
          rooms: data,
          isUnreadRoom: counter != null && counter.unreadCount > 0,
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
