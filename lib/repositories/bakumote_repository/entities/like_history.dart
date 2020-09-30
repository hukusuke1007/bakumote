import 'package:objectbox/objectbox.dart';

@Entity()
class LikeHistory {
  LikeHistory({
    this.id,
    this.userId,
    this.userName,
    this.userImageName,
    this.createdAt,
    this.updatedAt,
  });

  @Id()
  int id;

  String userId;
  String userName;
  String userImageName;
  int createdAt;
  int updatedAt;
}
