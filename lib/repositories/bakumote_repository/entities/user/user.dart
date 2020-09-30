import 'package:bakumote/helpers/date_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    @required String id,
    @required String name,
    @BirthdayConverter() DateTime birthday,
    @required int genderId,
    @required int prefectureId,
    @required String imageName,
    @required String description,
    @required String hobby,
    @required String favoriteType,
  }) = _User;
  User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @late
  String get nameWithAge => '$name ${DateHelper.calculateAge(birthday)}';

  @late
  String get imagePath => 'assets/images/$imageName';
}

class BirthdayConverter implements JsonConverter<DateTime, String> {
  const BirthdayConverter();

  @override
  DateTime fromJson(String json) => DateFormat('yyyy-MM-dd').parse(json);

  @override
  String toJson(DateTime object) =>
      object != null ? DateFormat('yyyy-MM-dd').format(object) : null;
}
