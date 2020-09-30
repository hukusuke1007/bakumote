// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String id,
      @required String name,
      @BirthdayConverter() DateTime birthday,
      @required int genderId,
      @required int prefectureId,
      @required String imageName,
      @required String description,
      @required String hobby,
      @required String favoriteType}) {
    return _User(
      id: id,
      name: name,
      birthday: birthday,
      genderId: genderId,
      prefectureId: prefectureId,
      imageName: imageName,
      description: description,
      hobby: hobby,
      favoriteType: favoriteType,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;
  String get name;
  @BirthdayConverter()
  DateTime get birthday;
  int get genderId;
  int get prefectureId;
  String get imageName;
  String get description;
  String get hobby;
  String get favoriteType;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @BirthdayConverter() DateTime birthday,
      int genderId,
      int prefectureId,
      String imageName,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
    Object imageName = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      birthday: birthday == freezed ? _value.birthday : birthday as DateTime,
      genderId: genderId == freezed ? _value.genderId : genderId as int,
      prefectureId:
          prefectureId == freezed ? _value.prefectureId : prefectureId as int,
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
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @BirthdayConverter() DateTime birthday,
      int genderId,
      int prefectureId,
      String imageName,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
    Object imageName = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      birthday: birthday == freezed ? _value.birthday : birthday as DateTime,
      genderId: genderId == freezed ? _value.genderId : genderId as int,
      prefectureId:
          prefectureId == freezed ? _value.prefectureId : prefectureId as int,
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

@JsonSerializable()

/// @nodoc
class _$_User extends _User {
  _$_User(
      {@required this.id,
      @required this.name,
      @BirthdayConverter() this.birthday,
      @required this.genderId,
      @required this.prefectureId,
      @required this.imageName,
      @required this.description,
      @required this.hobby,
      @required this.favoriteType})
      : assert(id != null),
        assert(name != null),
        assert(genderId != null),
        assert(prefectureId != null),
        assert(imageName != null),
        assert(description != null),
        assert(hobby != null),
        assert(favoriteType != null),
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @BirthdayConverter()
  final DateTime birthday;
  @override
  final int genderId;
  @override
  final int prefectureId;
  @override
  final String imageName;
  @override
  final String description;
  @override
  final String hobby;
  @override
  final String favoriteType;

  bool _didnameWithAge = false;
  String _nameWithAge;

  @override
  String get nameWithAge {
    if (_didnameWithAge == false) {
      _didnameWithAge = true;
      _nameWithAge = '$name ${DateHelper.calculateAge(birthday)}';
    }
    return _nameWithAge;
  }

  bool _didimagePath = false;
  String _imagePath;

  @override
  String get imagePath {
    if (_didimagePath == false) {
      _didimagePath = true;
      _imagePath = 'assets/images/$imageName';
    }
    return _imagePath;
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, birthday: $birthday, genderId: $genderId, prefectureId: $prefectureId, imageName: $imageName, description: $description, hobby: $hobby, favoriteType: $favoriteType, nameWithAge: $nameWithAge, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.genderId, genderId) ||
                const DeepCollectionEquality()
                    .equals(other.genderId, genderId)) &&
            (identical(other.prefectureId, prefectureId) ||
                const DeepCollectionEquality()
                    .equals(other.prefectureId, prefectureId)) &&
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
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(genderId) ^
      const DeepCollectionEquality().hash(prefectureId) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hobby) ^
      const DeepCollectionEquality().hash(favoriteType);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  _User._() : super._();
  factory _User(
      {@required String id,
      @required String name,
      @BirthdayConverter() DateTime birthday,
      @required int genderId,
      @required int prefectureId,
      @required String imageName,
      @required String description,
      @required String hobby,
      @required String favoriteType}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @BirthdayConverter()
  DateTime get birthday;
  @override
  int get genderId;
  @override
  int get prefectureId;
  @override
  String get imageName;
  @override
  String get description;
  @override
  String get hobby;
  @override
  String get favoriteType;
  @override
  _$UserCopyWith<_User> get copyWith;
}
