// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'setting_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingPageStateTearOff {
  const _$SettingPageStateTearOff();

// ignore: unused_element
  _SettingPageState call({bool isLoading = false}) {
    return _SettingPageState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingPageState = _$SettingPageStateTearOff();

/// @nodoc
mixin _$SettingPageState {
  bool get isLoading;

  $SettingPageStateCopyWith<SettingPageState> get copyWith;
}

/// @nodoc
abstract class $SettingPageStateCopyWith<$Res> {
  factory $SettingPageStateCopyWith(
          SettingPageState value, $Res Function(SettingPageState) then) =
      _$SettingPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$SettingPageStateCopyWithImpl<$Res>
    implements $SettingPageStateCopyWith<$Res> {
  _$SettingPageStateCopyWithImpl(this._value, this._then);

  final SettingPageState _value;
  // ignore: unused_field
  final $Res Function(SettingPageState) _then;

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
abstract class _$SettingPageStateCopyWith<$Res>
    implements $SettingPageStateCopyWith<$Res> {
  factory _$SettingPageStateCopyWith(
          _SettingPageState value, $Res Function(_SettingPageState) then) =
      __$SettingPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$SettingPageStateCopyWithImpl<$Res>
    extends _$SettingPageStateCopyWithImpl<$Res>
    implements _$SettingPageStateCopyWith<$Res> {
  __$SettingPageStateCopyWithImpl(
      _SettingPageState _value, $Res Function(_SettingPageState) _then)
      : super(_value, (v) => _then(v as _SettingPageState));

  @override
  _SettingPageState get _value => super._value as _SettingPageState;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_SettingPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_SettingPageState implements _SettingPageState {
  const _$_SettingPageState({this.isLoading = false})
      : assert(isLoading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SettingPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @override
  _$SettingPageStateCopyWith<_SettingPageState> get copyWith =>
      __$SettingPageStateCopyWithImpl<_SettingPageState>(this, _$identity);
}

abstract class _SettingPageState implements SettingPageState {
  const factory _SettingPageState({bool isLoading}) = _$_SettingPageState;

  @override
  bool get isLoading;
  @override
  _$SettingPageStateCopyWith<_SettingPageState> get copyWith;
}
