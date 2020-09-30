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
  _MyProfileState call({Profile profile, bool isLoading = false}) {
    return _MyProfileState(
      profile: profile,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyProfileState = _$MyProfileStateTearOff();

/// @nodoc
mixin _$MyProfileState {
  Profile get profile;
  bool get isLoading;

  $MyProfileStateCopyWith<MyProfileState> get copyWith;
}

/// @nodoc
abstract class $MyProfileStateCopyWith<$Res> {
  factory $MyProfileStateCopyWith(
          MyProfileState value, $Res Function(MyProfileState) then) =
      _$MyProfileStateCopyWithImpl<$Res>;
  $Res call({Profile profile, bool isLoading});

  $ProfileCopyWith<$Res> get profile;
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
    Object profile = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed ? _value.profile : profile as Profile,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$MyProfileStateCopyWith<$Res>
    implements $MyProfileStateCopyWith<$Res> {
  factory _$MyProfileStateCopyWith(
          _MyProfileState value, $Res Function(_MyProfileState) then) =
      __$MyProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({Profile profile, bool isLoading});

  @override
  $ProfileCopyWith<$Res> get profile;
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
    Object profile = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_MyProfileState(
      profile: profile == freezed ? _value.profile : profile as Profile,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_MyProfileState extends _MyProfileState {
  _$_MyProfileState({this.profile, this.isLoading = false})
      : assert(isLoading != null),
        super._();

  @override
  final Profile profile;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MyProfileState(profile: $profile, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyProfileState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$MyProfileStateCopyWith<_MyProfileState> get copyWith =>
      __$MyProfileStateCopyWithImpl<_MyProfileState>(this, _$identity);
}

abstract class _MyProfileState extends MyProfileState {
  _MyProfileState._() : super._();
  factory _MyProfileState({Profile profile, bool isLoading}) =
      _$_MyProfileState;

  @override
  Profile get profile;
  @override
  bool get isLoading;
  @override
  _$MyProfileStateCopyWith<_MyProfileState> get copyWith;
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

// ignore: unused_element
  _Profile call(
      {String id,
      String name = '',
      DateTime birthday,
      int genderId = 0,
      int prefectureId = 0,
      File image,
      String description = '',
      String hobby = '',
      String favoriteType = ''}) {
    return _Profile(
      id: id,
      name: name,
      birthday: birthday,
      genderId: genderId,
      prefectureId: prefectureId,
      image: image,
      description: description,
      hobby: hobby,
      favoriteType: favoriteType,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get id;
  String get name;
  DateTime get birthday;
  int get genderId;
  int get prefectureId;
  File get image;
  String get description;
  String get hobby;
  String get favoriteType;

  $ProfileCopyWith<Profile> get copyWith;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      int genderId,
      int prefectureId,
      File image,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
    Object image = freezed,
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
      image: image == freezed ? _value.image : image as File,
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
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      int genderId,
      int prefectureId,
      File image,
      String description,
      String hobby,
      String favoriteType});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object birthday = freezed,
    Object genderId = freezed,
    Object prefectureId = freezed,
    Object image = freezed,
    Object description = freezed,
    Object hobby = freezed,
    Object favoriteType = freezed,
  }) {
    return _then(_Profile(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      birthday: birthday == freezed ? _value.birthday : birthday as DateTime,
      genderId: genderId == freezed ? _value.genderId : genderId as int,
      prefectureId:
          prefectureId == freezed ? _value.prefectureId : prefectureId as int,
      image: image == freezed ? _value.image : image as File,
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
class _$_Profile extends _Profile {
  _$_Profile(
      {this.id,
      this.name = '',
      this.birthday,
      this.genderId = 0,
      this.prefectureId = 0,
      this.image,
      this.description = '',
      this.hobby = '',
      this.favoriteType = ''})
      : assert(name != null),
        assert(genderId != null),
        assert(prefectureId != null),
        assert(description != null),
        assert(hobby != null),
        assert(favoriteType != null),
        super._();

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  final DateTime birthday;
  @JsonKey(defaultValue: 0)
  @override
  final int genderId;
  @JsonKey(defaultValue: 0)
  @override
  final int prefectureId;
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

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, birthday: $birthday, genderId: $genderId, prefectureId: $prefectureId, image: $image, description: $description, hobby: $hobby, favoriteType: $favoriteType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
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
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
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
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hobby) ^
      const DeepCollectionEquality().hash(favoriteType);

  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);
}

abstract class _Profile extends Profile {
  _Profile._() : super._();
  factory _Profile(
      {String id,
      String name,
      DateTime birthday,
      int genderId,
      int prefectureId,
      File image,
      String description,
      String hobby,
      String favoriteType}) = _$_Profile;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get birthday;
  @override
  int get genderId;
  @override
  int get prefectureId;
  @override
  File get image;
  @override
  String get description;
  @override
  String get hobby;
  @override
  String get favoriteType;
  @override
  _$ProfileCopyWith<_Profile> get copyWith;
}
