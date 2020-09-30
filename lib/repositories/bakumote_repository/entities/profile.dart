import 'package:objectbox/objectbox.dart';

@Entity()
class Profile {
  Profile({
    this.id,
    this.userId,
    this.name = '',
    this.birthday,
    this.genderId = 0,
    this.prefectureId = 0,
    this.imagePath,
    this.description = '',
    this.hobby = '',
    this.favoriteType = '',
    this.createdAt,
    this.updatedAt,
  });

  static int myProfileId() => 1;
  static String imageFilename() => 'profile_image';

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
