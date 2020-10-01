// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfilePageStateTearOff {
  const _$UserProfilePageStateTearOff();

// ignore: unused_element
  _UserProfilePageState call({bool isLoading = false}) {
    return _UserProfilePageState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfilePageState = _$UserProfilePageStateTearOff();

/// @nodoc
mixin _$UserProfilePageState {
  bool get isLoading;

  $UserProfilePageStateCopyWith<UserProfilePageState> get copyWith;
}

/// @nodoc
abstract class $UserProfilePageStateCopyWith<$Res> {
  factory $UserProfilePageStateCopyWith(UserProfilePageState value,
          $Res Function(UserProfilePageState) then) =
      _$UserProfilePageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$UserProfilePageStateCopyWithImpl<$Res>
    implements $UserProfilePageStateCopyWith<$Res> {
  _$UserProfilePageStateCopyWithImpl(this._value, this._then);

  final UserProfilePageState _value;
  // ignore: unused_field
  final $Res Function(UserProfilePageState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserProfilePageStateCopyWith<$Res>
    implements $UserProfilePageStateCopyWith<$Res> {
  factory _$UserProfilePageStateCopyWith(_UserProfilePageState value,
          $Res Function(_UserProfilePageState) then) =
      __$UserProfilePageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$UserProfilePageStateCopyWithImpl<$Res>
    extends _$UserProfilePageStateCopyWithImpl<$Res>
    implements _$UserProfilePageStateCopyWith<$Res> {
  __$UserProfilePageStateCopyWithImpl(
      _UserProfilePageState _value, $Res Function(_UserProfilePageState) _then)
      : super(_value, (v) => _then(v as _UserProfilePageState));

  @override
  _UserProfilePageState get _value => super._value as _UserProfilePageState;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_UserProfilePageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_UserProfilePageState implements _UserProfilePageState {
  const _$_UserProfilePageState({this.isLoading = false})
      : assert(isLoading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserProfilePageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfilePageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @override
  _$UserProfilePageStateCopyWith<_UserProfilePageState> get copyWith =>
      __$UserProfilePageStateCopyWithImpl<_UserProfilePageState>(
          this, _$identity);
}

abstract class _UserProfilePageState implements UserProfilePageState {
  const factory _UserProfilePageState({bool isLoading}) =
      _$_UserProfilePageState;

  @override
  bool get isLoading;
  @override
  _$UserProfilePageStateCopyWith<_UserProfilePageState> get copyWith;
}
