import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Room {
  Room({
    this.id,
    this.roomId,
    this.friendUserId,
    this.latestMessage,
    this.unreadCount,
    this.createdAt,
    this.updatedAt,
    this.latestMessageAt,
  });

  @Id()
  int id;

  String roomId;
  String friendUserId;
  String latestMessage;
  int unreadCount;
  int createdAt;
  int updatedAt;
  int latestMessageAt;
}

class SnapshotRoom {
  SnapshotRoom({
    @required this.room,
    @required this.actionType,
  });
  final Room room;
  final RoomActionType actionType;
}

enum RoomActionType {
  create,
  updateLatestMessage,
  updateUnreadCount,
}
