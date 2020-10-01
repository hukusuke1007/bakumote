// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rooms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomsStateTearOff {
  const _$RoomsStateTearOff();

// ignore: unused_element
  _RoomsState call(
      {List<RoomState> rooms,
      bool isUnreadRoom = false,
      bool isLoading = false}) {
    return _RoomsState(
      rooms: rooms,
      isUnreadRoom: isUnreadRoom,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomsState = _$RoomsStateTearOff();

/// @nodoc
mixin _$RoomsState {
  List<RoomState> get rooms;
  bool get isUnreadRoom;
  bool get isLoading;

  $RoomsStateCopyWith<RoomsState> get copyWith;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res>;
  $Res call({List<RoomState> rooms, bool isUnreadRoom, bool isLoading});
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res> implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  final RoomsState _value;
  // ignore: unused_field
  final $Res Function(RoomsState) _then;

  @override
  $Res call({
    Object rooms = freezed,
    Object isUnreadRoom = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed ? _value.rooms : rooms as List<RoomState>,
      isUnreadRoom:
          isUnreadRoom == freezed ? _value.isUnreadRoom : isUnreadRoom as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$RoomsStateCopyWith<$Res> implements $RoomsStateCopyWith<$Res> {
  factory _$RoomsStateCopyWith(
          _RoomsState value, $Res Function(_RoomsState) then) =
      __$RoomsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<RoomState> rooms, bool isUnreadRoom, bool isLoading});
}

/// @nodoc
class __$RoomsStateCopyWithImpl<$Res> extends _$RoomsStateCopyWithImpl<$Res>
    implements _$RoomsStateCopyWith<$Res> {
  __$RoomsStateCopyWithImpl(
      _RoomsState _value, $Res Function(_RoomsState) _then)
      : super(_value, (v) => _then(v as _RoomsState));

  @override
  _RoomsState get _value => super._value as _RoomsState;

  @override
  $Res call({
    Object rooms = freezed,
    Object isUnreadRoom = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_RoomsState(
      rooms: rooms == freezed ? _value.rooms : rooms as List<RoomState>,
      isUnreadRoom:
          isUnreadRoom == freezed ? _value.isUnreadRoom : isUnreadRoom as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_RoomsState implements _RoomsState {
  _$_RoomsState({this.rooms, this.isUnreadRoom = false, this.isLoading = false})
      : assert(isUnreadRoom != null),
        assert(isLoading != null);

  @override
  final List<RoomState> rooms;
  @JsonKey(defaultValue: false)
  @override
  final bool isUnreadRoom;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RoomsState(rooms: $rooms, isUnreadRoom: $isUnreadRoom, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomsState &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.isUnreadRoom, isUnreadRoom) ||
                const DeepCollectionEquality()
                    .equals(other.isUnreadRoom, isUnreadRoom)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(isUnreadRoom) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$RoomsStateCopyWith<_RoomsState> get copyWith =>
      __$RoomsStateCopyWithImpl<_RoomsState>(this, _$identity);
}

abstract class _RoomsState implements RoomsState {
  factory _RoomsState(
      {List<RoomState> rooms,
      bool isUnreadRoom,
      bool isLoading}) = _$_RoomsState;

  @override
  List<RoomState> get rooms;
  @override
  bool get isUnreadRoom;
  @override
  bool get isLoading;
  @override
  _$RoomsStateCopyWith<_RoomsState> get copyWith;
}

/// @nodoc
class _$RoomStateTearOff {
  const _$RoomStateTearOff();

// ignore: unused_element
  _RoomState call(
      {String roomId,
      String userId,
      String name,
      String imageName,
      String latestMessage,
      DateTime latestMessageAt,
      int unreadCount = 0}) {
    return _RoomState(
      roomId: roomId,
      userId: userId,
      name: name,
      imageName: imageName,
      latestMessage: latestMessage,
      latestMessageAt: latestMessageAt,
      unreadCount: unreadCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomState = _$RoomStateTearOff();

/// @nodoc
mixin _$RoomState {
  String get roomId;
  String get userId;
  String get name;
  String get imageName;
  String get latestMessage;
  DateTime get latestMessageAt;
  int get unreadCount;

  $RoomStateCopyWith<RoomState> get copyWith;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res>;
  $Res call(
      {String roomId,
      String userId,
      String name,
      String imageName,
      String latestMessage,
      DateTime latestMessageAt,
      int unreadCount});
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res> implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  final RoomState _value;
  // ignore: unused_field
  final $Res Function(RoomState) _then;

  @override
  $Res call({
    Object roomId = freezed,
    Object userId = freezed,
    Object name = freezed,
    Object imageName = freezed,
    Object latestMessage = freezed,
    Object latestMessageAt = freezed,
    Object unreadCount = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      latestMessage: latestMessage == freezed
          ? _value.latestMessage
          : latestMessage as String,
      latestMessageAt: latestMessageAt == freezed
          ? _value.latestMessageAt
          : latestMessageAt as DateTime,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
    ));
  }
}

/// @nodoc
abstract class _$RoomStateCopyWith<$Res> implements $RoomStateCopyWith<$Res> {
  factory _$RoomStateCopyWith(
          _RoomState value, $Res Function(_RoomState) then) =
      __$RoomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String roomId,
      String userId,
      String name,
      String imageName,
      String latestMessage,
      DateTime latestMessageAt,
      int unreadCount});
}

/// @nodoc
class __$RoomStateCopyWithImpl<$Res> extends _$RoomStateCopyWithImpl<$Res>
    implements _$RoomStateCopyWith<$Res> {
  __$RoomStateCopyWithImpl(_RoomState _value, $Res Function(_RoomState) _then)
      : super(_value, (v) => _then(v as _RoomState));

  @override
  _RoomState get _value => super._value as _RoomState;

  @override
  $Res call({
    Object roomId = freezed,
    Object userId = freezed,
    Object name = freezed,
    Object imageName = freezed,
    Object latestMessage = freezed,
    Object latestMessageAt = freezed,
    Object unreadCount = freezed,
  }) {
    return _then(_RoomState(
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      latestMessage: latestMessage == freezed
          ? _value.latestMessage
          : latestMessage as String,
      latestMessageAt: latestMessageAt == freezed
          ? _value.latestMessageAt
          : latestMessageAt as DateTime,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
    ));
  }
}

/// @nodoc
class _$_RoomState extends _RoomState {
  _$_RoomState(
      {this.roomId,
      this.userId,
      this.name,
      this.imageName,
      this.latestMessage,
      this.latestMessageAt,
      this.unreadCount = 0})
      : assert(unreadCount != null),
        super._();

  @override
  final String roomId;
  @override
  final String userId;
  @override
  final String name;
  @override
  final String imageName;
  @override
  final String latestMessage;
  @override
  final DateTime latestMessageAt;
  @JsonKey(defaultValue: 0)
  @override
  final int unreadCount;

  @override
  String toString() {
    return 'RoomState(roomId: $roomId, userId: $userId, name: $name, imageName: $imageName, latestMessage: $latestMessage, latestMessageAt: $latestMessageAt, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomState &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.latestMessage, latestMessage) ||
                const DeepCollectionEquality()
                    .equals(other.latestMessage, latestMessage)) &&
            (identical(other.latestMessageAt, latestMessageAt) ||
                const DeepCollectionEquality()
                    .equals(other.latestMessageAt, latestMessageAt)) &&
            (identical(other.unreadCount, unreadCount) ||
                const DeepCollectionEquality()
                    .equals(other.unreadCount, unreadCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(latestMessage) ^
      const DeepCollectionEquality().hash(latestMessageAt) ^
      const DeepCollectionEquality().hash(unreadCount);

  @override
  _$RoomStateCopyWith<_RoomState> get copyWith =>
      __$RoomStateCopyWithImpl<_RoomState>(this, _$identity);
}

abstract class _RoomState extends RoomState {
  _RoomState._() : super._();
  factory _RoomState(
      {String roomId,
      String userId,
      String name,
      String imageName,
      String latestMessage,
      DateTime latestMessageAt,
      int unreadCount}) = _$_RoomState;

  @override
  String get roomId;
  @override
  String get userId;
  @override
  String get name;
  @override
  String get imageName;
  @override
  String get latestMessage;
  @override
  DateTime get latestMessageAt;
  @override
  int get unreadCount;
  @override
  _$RoomStateCopyWith<_RoomState> get copyWith;
}
