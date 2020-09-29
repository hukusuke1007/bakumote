// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_profile_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditProfilePageStateTearOff {
  const _$EditProfilePageStateTearOff();

// ignore: unused_element
  _EditProfilePageState call(
      {DateTime birthday, int genderId = 0, int prefectureId = 0}) {
    return _EditProfilePageState(
      birthday: birthday,
      genderId: genderId,
      prefectureId: prefectureId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfilePageState = _$EditProfilePageStateTearOff();

/// @nodoc
mixin _$EditProfilePageState {
  DateTime get birthday;
  int get genderId;
  int get prefectureId;

  $EditProfilePageStateCopyWith<EditProfilePageState> get copyWith;
}

/// @nodoc
abstract class $EditProfilePageStateCopyWith<$Res> {
  factory $EditProfilePageStateCopyWith(EditProfilePageState value,
          $Res Function(EditProfilePageState) then) =
      _$EditProfilePageStateCopyWithImpl<$Res>;
  $Res call({DateTime birthday, int genderId, int prefectureId});
}

/// @nodoc
class _$EditProfilePageStateCopyWithImpl<$Res>
    implements $EditProfilePageStateCopyWith<$Res> {
  _$EditProfilePageStateCopyWithImpl(this._value, this._then);

  final EditProfilePageState _value;
  // ignore: unused_field
  final $Res Function(EditProfilePageState) _then;

  @override
  $Res call({
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
  }) {
    return _then(_value.copyWith(
      birthday: birthday == freezed ? _value.birthday : birthday as DateTime,
      genderId: genderId == freezed ? _value.genderId : genderId as int,
      prefectureId:
          prefectureId == freezed ? _value.prefectureId : prefectureId as int,
    ));
  }
}

/// @nodoc
abstract class _$EditProfilePageStateCopyWith<$Res>
    implements $EditProfilePageStateCopyWith<$Res> {
  factory _$EditProfilePageStateCopyWith(_EditProfilePageState value,
          $Res Function(_EditProfilePageState) then) =
      __$EditProfilePageStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime birthday, int genderId, int prefectureId});
}

/// @nodoc
class __$EditProfilePageStateCopyWithImpl<$Res>
    extends _$EditProfilePageStateCopyWithImpl<$Res>
    implements _$EditProfilePageStateCopyWith<$Res> {
  __$EditProfilePageStateCopyWithImpl(
      _EditProfilePageState _value, $Res Function(_EditProfilePageState) _then)
      : super(_value, (v) => _then(v as _EditProfilePageState));

  @override
  _EditProfilePageState get _value => super._value as _EditProfilePageState;

  @override
  $Res call({
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
  }) {
    return _then(_EditProfilePageState(
      birthday: birthday == freezed ? _value.birthday : birthday as DateTime,
      genderId: genderId == freezed ? _value.genderId : genderId as int,
      prefectureId:
          prefectureId == freezed ? _value.prefectureId : prefectureId as int,
    ));
  }
}

/// @nodoc
class _$_EditProfilePageState implements _EditProfilePageState {
  const _$_EditProfilePageState(
      {this.birthday, this.genderId = 0, this.prefectureId = 0})
      : assert(genderId != null),
        assert(prefectureId != null);

  @override
  final DateTime birthday;
  @JsonKey(defaultValue: 0)
  @override
  final int genderId;
  @JsonKey(defaultValue: 0)
  @override
  final int prefectureId;

  @override
  String toString() {
    return 'EditProfilePageState(birthday: $birthday, genderId: $genderId, prefectureId: $prefectureId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfilePageState &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.genderId, genderId) ||
                const DeepCollectionEquality()
                    .equals(other.genderId, genderId)) &&
            (identical(other.prefectureId, prefectureId) ||
                const DeepCollectionEquality()
                    .equals(other.prefectureId, prefectureId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(genderId) ^
      const DeepCollectionEquality().hash(prefectureId);

  @override
  _$EditProfilePageStateCopyWith<_EditProfilePageState> get copyWith =>
      __$EditProfilePageStateCopyWithImpl<_EditProfilePageState>(
          this, _$identity);
}

abstract class _EditProfilePageState implements EditProfilePageState {
  const factory _EditProfilePageState(
      {DateTime birthday,
      int genderId,
      int prefectureId}) = _$_EditProfilePageState;

  @override
  DateTime get birthday;
  @override
  int get genderId;
  @override
  int get prefectureId;
  @override
  _$EditProfilePageStateCopyWith<_EditProfilePageState> get copyWith;
}
