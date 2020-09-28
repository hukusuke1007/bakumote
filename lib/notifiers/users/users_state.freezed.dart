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
  _UsersState call({List<UserState> users, bool isLoading = false}) {
    return _UsersState(
      users: users,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  List<UserState> get users;
  bool get isLoading;

  $UsersStateCopyWith<UsersState> get copyWith;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call({List<UserState> users, bool isLoading});
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
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as List<UserState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<UserState> users, bool isLoading});
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
    Object isLoading = freezed,
  }) {
    return _then(_UsersState(
      users: users == freezed ? _value.users : users as List<UserState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_UsersState extends _UsersState {
  _$_UsersState({this.users, this.isLoading = false})
      : assert(isLoading != null),
        super._();

  @override
  final List<UserState> users;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UsersState(users: $users, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);
}

abstract class _UsersState extends UsersState {
  _UsersState._() : super._();
  factory _UsersState({List<UserState> users, bool isLoading}) = _$_UsersState;

  @override
  List<UserState> get users;
  @override
  bool get isLoading;
  @override
  _$UsersStateCopyWith<_UsersState> get copyWith;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _UserState call(
      {String id,
      String name,
      int age,
      String gender,
      String prefectures,
      String imageName,
      String description,
      String hobby,
      String favoriteType}) {
    return _UserState(
      id: id,
      name: name,
      age: age,
      gender: gender,
      prefectures: prefectures,
      imageName: imageName,
      description: description,
      hobby: hobby,
      favoriteType: favoriteType,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  String get id;
  String get name;
  int get age;
  String get gender;
  String get prefectures;
  String get imageName;
  String get description;
  String get hobby;
  String get favoriteType;

  $UserStateCopyWith<UserState> get copyWith;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int age,
      String gender,
      String prefectures,
      String imageName,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object prefectures = freezed,
    Object imageName = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      gender: gender == freezed ? _value.gender : gender as String,
      prefectures:
          prefectures == freezed ? _value.prefectures : prefectures as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      description:
          description == freezed ? _value.description : description as String,
      hobby: hobby == freezed ? _value.hobby : hobby as String,
      favoriteType: favoriteType == freezed
          ? _value.favoriteType
          : favoriteType as String,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int age,
      String gender,
      String prefectures,
      String imageName,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object prefectures = freezed,
    Object imageName = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
  }) {
    return _then(_UserState(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      gender: gender == freezed ? _value.gender : gender as String,
      prefectures:
          prefectures == freezed ? _value.prefectures : prefectures as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      description:
          description == freezed ? _value.description : description as String,
      hobby: hobby == freezed ? _value.hobby : hobby as String,
      favoriteType: favoriteType == freezed
          ? _value.favoriteType
          : favoriteType as String,
    ));
  }
}

/// @nodoc
class _$_UserState extends _UserState {
  _$_UserState(
      {this.id,
      this.name,
      this.age,
      this.gender,
      this.prefectures,
      this.imageName,
      this.description,
      this.hobby,
      this.favoriteType})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String prefectures;
  @override
  final String imageName;
  @override
  final String description;
  @override
  final String hobby;
  @override
  final String favoriteType;

  @override
  String toString() {
    return 'UserState(id: $id, name: $name, age: $age, gender: $gender, prefectures: $prefectures, imageName: $imageName, description: $description, hobby: $hobby, favoriteType: $favoriteType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.prefectures, prefectures) ||
                const DeepCollectionEquality()
                    .equals(other.prefectures, prefectures)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hobby, hobby) ||
                const DeepCollectionEquality().equals(other.hobby, hobby)) &&
            (identical(other.favoriteType, favoriteType) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteType, favoriteType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(prefectures) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hobby) ^
      const DeepCollectionEquality().hash(favoriteType);

  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState extends UserState {
  _UserState._() : super._();
  factory _UserState(
      {String id,
      String name,
      int age,
      String gender,
      String prefectures,
      String imageName,
      String description,
      String hobby,
      String favoriteType}) = _$_UserState;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get prefectures;
  @override
  String get imageName;
  @override
  String get description;
  @override
  String get hobby;
  @override
  String get favoriteType;
  @override
  _$UserStateCopyWith<_UserState> get copyWith;
}
