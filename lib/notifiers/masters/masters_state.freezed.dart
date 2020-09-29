// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'masters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MastersStateTearOff {
  const _$MastersStateTearOff();

// ignore: unused_element
  _MastersState call(
      {List<MasterLabelState> prefectures,
      List<MasterLabelState> gender,
      bool isLoading = false}) {
    return _MastersState(
      prefectures: prefectures,
      gender: gender,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MastersState = _$MastersStateTearOff();

/// @nodoc
mixin _$MastersState {
  List<MasterLabelState> get prefectures;
  List<MasterLabelState> get gender;
  bool get isLoading;

  $MastersStateCopyWith<MastersState> get copyWith;
}

/// @nodoc
abstract class $MastersStateCopyWith<$Res> {
  factory $MastersStateCopyWith(
          MastersState value, $Res Function(MastersState) then) =
      _$MastersStateCopyWithImpl<$Res>;
  $Res call(
      {List<MasterLabelState> prefectures,
      List<MasterLabelState> gender,
      bool isLoading});
}

/// @nodoc
class _$MastersStateCopyWithImpl<$Res> implements $MastersStateCopyWith<$Res> {
  _$MastersStateCopyWithImpl(this._value, this._then);

  final MastersState _value;
  // ignore: unused_field
  final $Res Function(MastersState) _then;

  @override
  $Res call({
    Object prefectures = freezed,
    Object gender = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      prefectures: prefectures == freezed
          ? _value.prefectures
          : prefectures as List<MasterLabelState>,
      gender:
          gender == freezed ? _value.gender : gender as List<MasterLabelState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$MastersStateCopyWith<$Res>
    implements $MastersStateCopyWith<$Res> {
  factory _$MastersStateCopyWith(
          _MastersState value, $Res Function(_MastersState) then) =
      __$MastersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MasterLabelState> prefectures,
      List<MasterLabelState> gender,
      bool isLoading});
}

/// @nodoc
class __$MastersStateCopyWithImpl<$Res> extends _$MastersStateCopyWithImpl<$Res>
    implements _$MastersStateCopyWith<$Res> {
  __$MastersStateCopyWithImpl(
      _MastersState _value, $Res Function(_MastersState) _then)
      : super(_value, (v) => _then(v as _MastersState));

  @override
  _MastersState get _value => super._value as _MastersState;

  @override
  $Res call({
    Object prefectures = freezed,
    Object gender = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_MastersState(
      prefectures: prefectures == freezed
          ? _value.prefectures
          : prefectures as List<MasterLabelState>,
      gender:
          gender == freezed ? _value.gender : gender as List<MasterLabelState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_MastersState implements _MastersState {
  _$_MastersState({this.prefectures, this.gender, this.isLoading = false})
      : assert(isLoading != null);

  @override
  final List<MasterLabelState> prefectures;
  @override
  final List<MasterLabelState> gender;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MastersState(prefectures: $prefectures, gender: $gender, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MastersState &&
            (identical(other.prefectures, prefectures) ||
                const DeepCollectionEquality()
                    .equals(other.prefectures, prefectures)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prefectures) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$MastersStateCopyWith<_MastersState> get copyWith =>
      __$MastersStateCopyWithImpl<_MastersState>(this, _$identity);
}

abstract class _MastersState implements MastersState {
  factory _MastersState(
      {List<MasterLabelState> prefectures,
      List<MasterLabelState> gender,
      bool isLoading}) = _$_MastersState;

  @override
  List<MasterLabelState> get prefectures;
  @override
  List<MasterLabelState> get gender;
  @override
  bool get isLoading;
  @override
  _$MastersStateCopyWith<_MastersState> get copyWith;
}

/// @nodoc
class _$MasterLabelStateTearOff {
  const _$MasterLabelStateTearOff();

// ignore: unused_element
  _MasterLabelState call({int id, String ja, String en}) {
    return _MasterLabelState(
      id: id,
      ja: ja,
      en: en,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MasterLabelState = _$MasterLabelStateTearOff();

/// @nodoc
mixin _$MasterLabelState {
  int get id;
  String get ja;
  String get en;

  $MasterLabelStateCopyWith<MasterLabelState> get copyWith;
}

/// @nodoc
abstract class $MasterLabelStateCopyWith<$Res> {
  factory $MasterLabelStateCopyWith(
          MasterLabelState value, $Res Function(MasterLabelState) then) =
      _$MasterLabelStateCopyWithImpl<$Res>;
  $Res call({int id, String ja, String en});
}

/// @nodoc
class _$MasterLabelStateCopyWithImpl<$Res>
    implements $MasterLabelStateCopyWith<$Res> {
  _$MasterLabelStateCopyWithImpl(this._value, this._then);

  final MasterLabelState _value;
  // ignore: unused_field
  final $Res Function(MasterLabelState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object ja = freezed,
    Object en = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      ja: ja == freezed ? _value.ja : ja as String,
      en: en == freezed ? _value.en : en as String,
    ));
  }
}

/// @nodoc
abstract class _$MasterLabelStateCopyWith<$Res>
    implements $MasterLabelStateCopyWith<$Res> {
  factory _$MasterLabelStateCopyWith(
          _MasterLabelState value, $Res Function(_MasterLabelState) then) =
      __$MasterLabelStateCopyWithImpl<$Res>;
  @override
  $Res call({int id, String ja, String en});
}

/// @nodoc
class __$MasterLabelStateCopyWithImpl<$Res>
    extends _$MasterLabelStateCopyWithImpl<$Res>
    implements _$MasterLabelStateCopyWith<$Res> {
  __$MasterLabelStateCopyWithImpl(
      _MasterLabelState _value, $Res Function(_MasterLabelState) _then)
      : super(_value, (v) => _then(v as _MasterLabelState));

  @override
  _MasterLabelState get _value => super._value as _MasterLabelState;

  @override
  $Res call({
    Object id = freezed,
    Object ja = freezed,
    Object en = freezed,
  }) {
    return _then(_MasterLabelState(
      id: id == freezed ? _value.id : id as int,
      ja: ja == freezed ? _value.ja : ja as String,
      en: en == freezed ? _value.en : en as String,
    ));
  }
}

/// @nodoc
class _$_MasterLabelState extends _MasterLabelState {
  _$_MasterLabelState({this.id, this.ja, this.en}) : super._();

  @override
  final int id;
  @override
  final String ja;
  @override
  final String en;

  @override
  String toString() {
    return 'MasterLabelState(id: $id, ja: $ja, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MasterLabelState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ja, ja) ||
                const DeepCollectionEquality().equals(other.ja, ja)) &&
            (identical(other.en, en) ||
                const DeepCollectionEquality().equals(other.en, en)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ja) ^
      const DeepCollectionEquality().hash(en);

  @override
  _$MasterLabelStateCopyWith<_MasterLabelState> get copyWith =>
      __$MasterLabelStateCopyWithImpl<_MasterLabelState>(this, _$identity);
}

abstract class _MasterLabelState extends MasterLabelState {
  _MasterLabelState._() : super._();
  factory _MasterLabelState({int id, String ja, String en}) =
      _$_MasterLabelState;

  @override
  int get id;
  @override
  String get ja;
  @override
  String get en;
  @override
  _$MasterLabelStateCopyWith<_MasterLabelState> get copyWith;
}
