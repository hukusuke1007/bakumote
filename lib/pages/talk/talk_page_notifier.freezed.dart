// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'talk_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TalkPageStateTearOff {
  const _$TalkPageStateTearOff();

// ignore: unused_element
  _TalkPageState call({bool isLoading = false}) {
    return _TalkPageState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TalkPageState = _$TalkPageStateTearOff();

/// @nodoc
mixin _$TalkPageState {
  bool get isLoading;

  $TalkPageStateCopyWith<TalkPageState> get copyWith;
}

/// @nodoc
abstract class $TalkPageStateCopyWith<$Res> {
  factory $TalkPageStateCopyWith(
          TalkPageState value, $Res Function(TalkPageState) then) =
      _$TalkPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$TalkPageStateCopyWithImpl<$Res>
    implements $TalkPageStateCopyWith<$Res> {
  _$TalkPageStateCopyWithImpl(this._value, this._then);

  final TalkPageState _value;
  // ignore: unused_field
  final $Res Function(TalkPageState) _then;

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
abstract class _$TalkPageStateCopyWith<$Res>
    implements $TalkPageStateCopyWith<$Res> {
  factory _$TalkPageStateCopyWith(
          _TalkPageState value, $Res Function(_TalkPageState) then) =
      __$TalkPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$TalkPageStateCopyWithImpl<$Res>
    extends _$TalkPageStateCopyWithImpl<$Res>
    implements _$TalkPageStateCopyWith<$Res> {
  __$TalkPageStateCopyWithImpl(
      _TalkPageState _value, $Res Function(_TalkPageState) _then)
      : super(_value, (v) => _then(v as _TalkPageState));

  @override
  _TalkPageState get _value => super._value as _TalkPageState;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_TalkPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_TalkPageState implements _TalkPageState {
  const _$_TalkPageState({this.isLoading = false}) : assert(isLoading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TalkPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TalkPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @override
  _$TalkPageStateCopyWith<_TalkPageState> get copyWith =>
      __$TalkPageStateCopyWithImpl<_TalkPageState>(this, _$identity);
}

abstract class _TalkPageState implements TalkPageState {
  const factory _TalkPageState({bool isLoading}) = _$_TalkPageState;

  @override
  bool get isLoading;
  @override
  _$TalkPageStateCopyWith<_TalkPageState> get copyWith;
}
