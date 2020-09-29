// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppInfoStateTearOff {
  const _$AppInfoStateTearOff();

// ignore: unused_element
  _AppInfoState call({String appVersion = ''}) {
    return _AppInfoState(
      appVersion: appVersion,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppInfoState = _$AppInfoStateTearOff();

/// @nodoc
mixin _$AppInfoState {
  String get appVersion;

  $AppInfoStateCopyWith<AppInfoState> get copyWith;
}

/// @nodoc
abstract class $AppInfoStateCopyWith<$Res> {
  factory $AppInfoStateCopyWith(
          AppInfoState value, $Res Function(AppInfoState) then) =
      _$AppInfoStateCopyWithImpl<$Res>;
  $Res call({String appVersion});
}

/// @nodoc
class _$AppInfoStateCopyWithImpl<$Res> implements $AppInfoStateCopyWith<$Res> {
  _$AppInfoStateCopyWithImpl(this._value, this._then);

  final AppInfoState _value;
  // ignore: unused_field
  final $Res Function(AppInfoState) _then;

  @override
  $Res call({
    Object appVersion = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

/// @nodoc
abstract class _$AppInfoStateCopyWith<$Res>
    implements $AppInfoStateCopyWith<$Res> {
  factory _$AppInfoStateCopyWith(
          _AppInfoState value, $Res Function(_AppInfoState) then) =
      __$AppInfoStateCopyWithImpl<$Res>;
  @override
  $Res call({String appVersion});
}

/// @nodoc
class __$AppInfoStateCopyWithImpl<$Res> extends _$AppInfoStateCopyWithImpl<$Res>
    implements _$AppInfoStateCopyWith<$Res> {
  __$AppInfoStateCopyWithImpl(
      _AppInfoState _value, $Res Function(_AppInfoState) _then)
      : super(_value, (v) => _then(v as _AppInfoState));

  @override
  _AppInfoState get _value => super._value as _AppInfoState;

  @override
  $Res call({
    Object appVersion = freezed,
  }) {
    return _then(_AppInfoState(
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

/// @nodoc
class _$_AppInfoState implements _AppInfoState {
  _$_AppInfoState({this.appVersion = ''}) : assert(appVersion != null);

  @JsonKey(defaultValue: '')
  @override
  final String appVersion;

  @override
  String toString() {
    return 'AppInfoState(appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppInfoState &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appVersion);

  @override
  _$AppInfoStateCopyWith<_AppInfoState> get copyWith =>
      __$AppInfoStateCopyWithImpl<_AppInfoState>(this, _$identity);
}

abstract class _AppInfoState implements AppInfoState {
  factory _AppInfoState({String appVersion}) = _$_AppInfoState;

  @override
  String get appVersion;
  @override
  _$AppInfoStateCopyWith<_AppInfoState> get copyWith;
}
