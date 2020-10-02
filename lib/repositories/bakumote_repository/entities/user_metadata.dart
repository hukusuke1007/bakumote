import 'package:objectbox/objectbox.dart';

@Entity()
class UserMetadata {
  UserMetadata({
    this.id,
    this.userId,
    this.messageCount = 0,
    this.createdAt,
    this.updatedAt,
  });

  @Id()
  int id;

  String userId;
  int messageCount;
  int createdAt;
  int updatedAt;
}
