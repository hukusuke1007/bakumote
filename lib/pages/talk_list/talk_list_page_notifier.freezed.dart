// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'talk_list_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TalkListPageStateTearOff {
  const _$TalkListPageStateTearOff();

// ignore: unused_element
  _TalkListPageState call({bool isLoading = false}) {
    return _TalkListPageState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TalkListPageState = _$TalkListPageStateTearOff();

/// @nodoc
mixin _$TalkListPageState {
  bool get isLoading;

  $TalkListPageStateCopyWith<TalkListPageState> get copyWith;
}

/// @nodoc
abstract class $TalkListPageStateCopyWith<$Res> {
  factory $TalkListPageStateCopyWith(
          TalkListPageState value, $Res Function(TalkListPageState) then) =
      _$TalkListPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$TalkListPageStateCopyWithImpl<$Res>
    implements $TalkListPageStateCopyWith<$Res> {
  _$TalkListPageStateCopyWithImpl(this._value, this._then);

  final TalkListPageState _value;
  // ignore: unused_field
  final $Res Function(TalkListPageState) _then;

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
abstract class _$TalkListPageStateCopyWith<$Res>
    implements $TalkListPageStateCopyWith<$Res> {
  factory _$TalkListPageStateCopyWith(
          _TalkListPageState value, $Res Function(_TalkListPageState) then) =
      __$TalkListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$TalkListPageStateCopyWithImpl<$Res>
    extends _$TalkListPageStateCopyWithImpl<$Res>
    implements _$TalkListPageStateCopyWith<$Res> {
  __$TalkListPageStateCopyWithImpl(
      _TalkListPageState _value, $Res Function(_TalkListPageState) _then)
      : super(_value, (v) => _then(v as _TalkListPageState));

  @override
  _TalkListPageState get _value => super._value as _TalkListPageState;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_TalkListPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_TalkListPageState implements _TalkListPageState {
  const _$_TalkListPageState({this.isLoading = false})
      : assert(isLoading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TalkListPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TalkListPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @override
  _$TalkListPageStateCopyWith<_TalkListPageState> get copyWith =>
      __$TalkListPageStateCopyWithImpl<_TalkListPageState>(this, _$identity);
}

abstract class _TalkListPageState implements TalkListPageState {
  const factory _TalkListPageState({bool isLoading}) = _$_TalkListPageState;

  @override
  bool get isLoading;
  @override
  _$TalkListPageStateCopyWith<_TalkListPageState> get copyWith;
}
