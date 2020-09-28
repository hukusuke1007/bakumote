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
  _RoomsState call({List<RoomState> rooms}) {
    return _RoomsState(
      rooms: rooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomsState = _$RoomsStateTearOff();

/// @nodoc
mixin _$RoomsState {
  List<RoomState> get rooms;

  $RoomsStateCopyWith<RoomsState> get copyWith;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res>;
  $Res call({List<RoomState> rooms});
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
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed ? _value.rooms : rooms as List<RoomState>,
    ));
  }
}

/// @nodoc
abstract class _$RoomsStateCopyWith<$Res> implements $RoomsStateCopyWith<$Res> {
  factory _$RoomsStateCopyWith(
          _RoomsState value, $Res Function(_RoomsState) then) =
      __$RoomsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<RoomState> rooms});
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
  }) {
    return _then(_RoomsState(
      rooms: rooms == freezed ? _value.rooms : rooms as List<RoomState>,
    ));
  }
}

/// @nodoc
class _$_RoomsState implements _RoomsState {
  _$_RoomsState({this.rooms});

  @override
  final List<RoomState> rooms;

  @override
  String toString() {
    return 'RoomsState(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomsState &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @override
  _$RoomsStateCopyWith<_RoomsState> get copyWith =>
      __$RoomsStateCopyWithImpl<_RoomsState>(this, _$identity);
}

abstract class _RoomsState implements RoomsState {
  factory _RoomsState({List<RoomState> rooms}) = _$_RoomsState;

  @override
  List<RoomState> get rooms;
  @override
  _$RoomsStateCopyWith<_RoomsState> get copyWith;
}
