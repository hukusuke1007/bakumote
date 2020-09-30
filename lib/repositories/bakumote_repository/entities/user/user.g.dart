// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    birthday: const BirthdayConverter().fromJson(json['birthday'] as String),
    genderId: json['genderId'] as int,
    prefectureId: json['prefectureId'] as int,
    imageName: json['imageName'] as String,
    description: json['description'] as String,
    hobby: json['hobby'] as String,
    favoriteType: json['favoriteType'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': const BirthdayConverter().toJson(instance.birthday),
      'genderId': instance.genderId,
      'prefectureId': instance.prefectureId,
      'imageName': instance.imageName,
      'description': instance.description,
      'hobby': instance.hobby,
      'favoriteType': instance.favoriteType,
    };
