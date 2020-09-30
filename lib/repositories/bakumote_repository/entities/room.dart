import 'package:objectbox/objectbox.dart';

@Entity()
class Room {
  Room({
    this.id,
    this.roomId,
    this.members,
    this.latestMessage,
    this.unreadCount,
    this.createdAt,
    this.updatedAt,
  });

  @Id()
  int id;

  String roomId;
  List<String> members;
  String latestMessage;
  int unreadCount;
  int createdAt;
  int updatedAt;
}
