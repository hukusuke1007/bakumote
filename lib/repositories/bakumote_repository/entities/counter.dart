import 'package:objectbox/objectbox.dart';

@Entity()
class Counter {
  Counter({
    this.id,
    this.unreadCount = 0,
    this.createdAt,
    this.updatedAt,
  });

  static int myCounterId() => 1;

  @Id()
  int id;

  int unreadCount;
  int createdAt;
  int updatedAt;
}
