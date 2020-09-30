import 'package:objectbox/objectbox.dart';

@Entity()
class Message {
  Message({
    this.id,
    this.userId,
    this.messageId,
    this.roomId,
    this.text,
    this.isUnread,
    this.createdAt,
    this.updatedAt,
  });

  @Id()
  int id;

  String messageId;
  String userId;
  String roomId;
  String text;
  bool isUnread;
  int createdAt;
  int updatedAt;
}
