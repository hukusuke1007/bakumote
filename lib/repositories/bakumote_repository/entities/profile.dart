import 'package:objectbox/objectbox.dart';

@Entity()
class Profile {
  Profile({
    this.id,
    this.userId,
    this.name,
    this.birthday,
    this.genderId,
    this.prefectureId,
    this.imagePath,
    this.description,
    this.hobby,
    this.favoriteType,
    this.createdAt,
    this.updatedAt,
  });

  static int myProfileId() => 0;

  @Id()
  int id;

  String userId;
  String name;
  int birthday;
  int genderId;
  int prefectureId;
  String imagePath;
  String description;
  String hobby;
  String favoriteType;
  int createdAt;
  int updatedAt;
}
