// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyProfileStateTearOff {
  const _$MyProfileStateTearOff();

// ignore: unused_element
  _MyProfileState call(
      {String name = '',
      int age,
      String gender = '',
      String prefectures = '',
      File image,
      String description = '',
      String hobby = '',
      String favoriteType = '',
      bool isLoading = false}) {
    return _MyProfileState(
      name: name,
      age: age,
      gender: gender,
      prefectures: prefectures,
      image: image,
      description: description,
      hobby: hobby,
      favoriteType: favoriteType,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyProfileState = _$MyProfileStateTearOff();

/// @nodoc
mixin _$MyProfileState {
  String get name;
  int get age;
  String get gender;
  String get prefectures;
  File get image;
  String get description;
  String get hobby;
  String get favoriteType;
  bool get isLoading;

  $MyProfileStateCopyWith<MyProfileState> get copyWith;
}

/// @nodoc
abstract class $MyProfileStateCopyWith<$Res> {
  factory $MyProfileStateCopyWith(
          MyProfileState value, $Res Function(MyProfileState) then) =
      _$MyProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int age,
      String gender,
      String prefectures,
      File image,
      String description,
      String hobby,
      String favoriteType,
      bool isLoading});
}

/// @nodoc
class _$MyProfileStateCopyWithImpl<$Res>
    implements $MyProfileStateCopyWith<$Res> {
  _$MyProfileStateCopyWithImpl(this._value, this._then);

  final MyProfileState _value;
  // ignore: unused_field
  final $Res Function(MyProfileState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object prefectures = freezed,
    Object image = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      gender: gender == freezed ? _value.gender : gender as String,
      prefectures:
          prefectures == freezed ? _value.prefectures : prefectures as String,
      image: image == freezed ? _value.image : image as File,
      description:
          description == freezed ? _value.description : description as String,
      hobby: hobby == freezed ? _value.hobby : hobby as String,
      favoriteType: favoriteType == freezed
          ? _value.favoriteType
          : favoriteType as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$MyProfileStateCopyWith<$Res>
    implements $MyProfileStateCopyWith<$Res> {
  factory _$MyProfileStateCopyWith(
          _MyProfileState value, $Res Function(_MyProfileState) then) =
      __$MyProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int age,
      String gender,
      String prefectures,
      File image,
      String description,
      String hobby,
      String favoriteType,
      bool isLoading});
}

/// @nodoc
class __$MyProfileStateCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res>
    implements _$MyProfileStateCopyWith<$Res> {
  __$MyProfileStateCopyWithImpl(
      _MyProfileState _value, $Res Function(_MyProfileState) _then)
      : super(_value, (v) => _then(v as _MyProfileState));

  @override
  _MyProfileState get _value => super._value as _MyProfileState;

  @override
  $Res call({
    Object name = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object prefectures = freezed,
    Object image = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_MyProfileState(
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      gender: gender == freezed ? _value.gender : gender as String,
      prefectures:
          prefectures == freezed ? _value.prefectures : prefectures as String,
      image: image == freezed ? _value.image : image as File,
      description:
          description == freezed ? _value.description : description as String,
      hobby: hobby == freezed ? _value.hobby : hobby as String,
      favoriteType: favoriteType == freezed
          ? _value.favoriteType
          : favoriteType as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_MyProfileState extends _MyProfileState {
  _$_MyProfileState(
      {this.name = '',
      this.age,
      this.gender = '',
      this.prefectures = '',
      this.image,
      this.description = '',
      this.hobby = '',
      this.favoriteType = '',
      this.isLoading = false})
      : assert(name != null),
        assert(gender != null),
        assert(prefectures != null),
        assert(description != null),
        assert(hobby != null),
        assert(favoriteType != null),
        assert(isLoading != null),
        super._();

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  final int age;
  @JsonKey(defaultValue: '')
  @override
  final String gender;
  @JsonKey(defaultValue: '')
  @override
  final String prefectures;
  @override
  final File image;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: '')
  @override
  final String hobby;
  @JsonKey(defaultValue: '')
  @override
  final String favoriteType;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MyProfileState(name: $name, age: $age, gender: $gender, prefectures: $prefectures, image: $image, description: $description, hobby: $hobby, favoriteType: $favoriteType, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyProfileState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.prefectures, prefectures) ||
                const DeepCollectionEquality()
                    .equals(other.prefectures, prefectures)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hobby, hobby) ||
                const DeepCollectionEquality().equals(other.hobby, hobby)) &&
            (identical(other.favoriteType, favoriteType) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteType, favoriteType)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(prefectures) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hobby) ^
      const DeepCollectionEquality().hash(favoriteType) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$MyProfileStateCopyWith<_MyProfileState> get copyWith =>
      __$MyProfileStateCopyWithImpl<_MyProfileState>(this, _$identity);
}

abstract class _MyProfileState extends MyProfileState {
  _MyProfileState._() : super._();
  factory _MyProfileState(
      {String name,
      int age,
      String gender,
      String prefectures,
      File image,
      String description,
      String hobby,
      String favoriteType,
      bool isLoading}) = _$_MyProfileState;

  @override
  String get name;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get prefectures;
  @override
  File get image;
  @override
  String get description;
  @override
  String get hobby;
  @override
  String get favoriteType;
  @override
  bool get isLoading;
  @override
  _$MyProfileStateCopyWith<_MyProfileState> get copyWith;
}