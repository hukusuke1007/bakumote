// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

// ignore: unused_element
  _UsersState call({List<UserState> users}) {
    return _UsersState(
      users: users,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  List<UserState> get users;

  $UsersStateCopyWith<UsersState> get copyWith;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call({List<UserState> users});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as List<UserState>,
    ));
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<UserState> users});
}

/// @nodoc
class __$UsersStateCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateCopyWith<$Res> {
  __$UsersStateCopyWithImpl(
      _UsersState _value, $Res Function(_UsersState) _then)
      : super(_value, (v) => _then(v as _UsersState));

  @override
  _UsersState get _value => super._value as _UsersState;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_UsersState(
      users: users == freezed ? _value.users : users as List<UserState>,
    ));
  }
}

/// @nodoc
class _$_UsersState extends _UsersState {
  _$_UsersState({this.users}) : super._();

  @override
  final List<UserState> users;

  @override
  String toString() {
    return 'UsersState(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);
}

abstract class _UsersState extends UsersState {
  _UsersState._() : super._();
  factory _UsersState({List<UserState> users}) = _$_UsersState;

  @override
  List<UserState> get users;
  @override
  _$UsersStateCopyWith<_UsersState> get copyWith;
}
