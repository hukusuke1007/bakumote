// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LikeStateTearOff {
  const _$LikeStateTearOff();

// ignore: unused_element
  _LikeState call({String userId, bool isLiked = false}) {
    return _LikeState(
      userId: userId,
      isLiked: isLiked,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LikeState = _$LikeStateTearOff();

/// @nodoc
mixin _$LikeState {
  String get userId;
  bool get isLiked;

  $LikeStateCopyWith<LikeState> get copyWith;
}

/// @nodoc
abstract class $LikeStateCopyWith<$Res> {
  factory $LikeStateCopyWith(LikeState value, $Res Function(LikeState) then) =
      _$LikeStateCopyWithImpl<$Res>;
  $Res call({String userId, bool isLiked});
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res> implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._value, this._then);

  final LikeState _value;
  // ignore: unused_field
  final $Res Function(LikeState) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
    ));
  }
}

/// @nodoc
abstract class _$LikeStateCopyWith<$Res> implements $LikeStateCopyWith<$Res> {
  factory _$LikeStateCopyWith(
          _LikeState value, $Res Function(_LikeState) then) =
      __$LikeStateCopyWithImpl<$Res>;
  @override
  $Res call({String userId, bool isLiked});
}

/// @nodoc
class __$LikeStateCopyWithImpl<$Res> extends _$LikeStateCopyWithImpl<$Res>
    implements _$LikeStateCopyWith<$Res> {
  __$LikeStateCopyWithImpl(_LikeState _value, $Res Function(_LikeState) _then)
      : super(_value, (v) => _then(v as _LikeState));

  @override
  _LikeState get _value => super._value as _LikeState;

  @override
  $Res call({
    Object userId = freezed,
    Object isLiked = freezed,
  }) {
    return _then(_LikeState(
      userId: userId == freezed ? _value.userId : userId as String,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
    ));
  }
}

/// @nodoc
class _$_LikeState implements _LikeState {
  _$_LikeState({this.userId, this.isLiked = false}) : assert(isLiked != null);

  @override
  final String userId;
  @JsonKey(defaultValue: false)
  @override
  final bool isLiked;

  @override
  String toString() {
    return 'LikeState(userId: $userId, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeState &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality().equals(other.isLiked, isLiked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isLiked);

  @override
  _$LikeStateCopyWith<_LikeState> get copyWith =>
      __$LikeStateCopyWithImpl<_LikeState>(this, _$identity);
}

abstract class _LikeState implements LikeState {
  factory _LikeState({String userId, bool isLiked}) = _$_LikeState;

  @override
  String get userId;
  @override
  bool get isLiked;
  @override
  _$LikeStateCopyWith<_LikeState> get copyWith;
}
