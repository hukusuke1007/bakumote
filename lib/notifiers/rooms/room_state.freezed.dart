// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
      DateTime latestDate,
      int unreadCount = 0}) {
    return _RoomState(
      roomId: roomId,
      userId: userId,
      name: name,
      imageName: imageName,
      latestMessage: latestMessage,
      latestDate: latestDate,
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
  DateTime get latestDate;
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
      DateTime latestDate,
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
    Object latestDate = freezed,
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
      latestDate:
          latestDate == freezed ? _value.latestDate : latestDate as DateTime,
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
      DateTime latestDate,
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
    Object latestDate = freezed,
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
      latestDate:
          latestDate == freezed ? _value.latestDate : latestDate as DateTime,
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
      this.latestDate,
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
  final DateTime latestDate;
  @JsonKey(defaultValue: 0)
  @override
  final int unreadCount;

  @override
  String toString() {
    return 'RoomState(roomId: $roomId, userId: $userId, name: $name, imageName: $imageName, latestMessage: $latestMessage, latestDate: $latestDate, unreadCount: $unreadCount)';
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
            (identical(other.latestDate, latestDate) ||
                const DeepCollectionEquality()
                    .equals(other.latestDate, latestDate)) &&
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
      const DeepCollectionEquality().hash(latestDate) ^
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
      DateTime latestDate,
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
  DateTime get latestDate;
  @override
  int get unreadCount;
  @override
  _$RoomStateCopyWith<_RoomState> get copyWith;
}
