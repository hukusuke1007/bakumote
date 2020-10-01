// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:objectbox/objectbox.dart';
export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file
import 'repositories/bakumote_repository/entities/room.dart';
import 'repositories/bakumote_repository/entities/profile.dart';
import 'repositories/bakumote_repository/entities/message.dart';
import 'repositories/bakumote_repository/entities/block_history.dart';
import 'repositories/bakumote_repository/entities/like_history.dart';
import 'repositories/bakumote_repository/entities/counter.dart';

ModelDefinition getObjectBoxModel() {
  final model = ModelInfo.fromMap({
    "entities": [
      {
        "id": "1:834508830682371816",
        "lastPropertyId": "6:3317500008770306545",
        "name": "LikeHistory",
        "properties": [
          {"id": "1:6609023369008064760", "name": "id", "type": 6, "flags": 1},
          {"id": "2:922906177124181532", "name": "userId", "type": 9},
          {"id": "3:6053193830208521990", "name": "userName", "type": 9},
          {"id": "4:7516714234336249220", "name": "userImageName", "type": 9},
          {"id": "5:5715591065471671332", "name": "createdAt", "type": 6},
          {"id": "6:3317500008770306545", "name": "updatedAt", "type": 6}
        ]
      },
      {
        "id": "2:7508321855245374242",
        "lastPropertyId": "7:6084853166829554710",
        "name": "BlockHistory",
        "properties": [
          {"id": "1:5221870660787891588", "name": "id", "type": 6, "flags": 1},
          {"id": "2:9103788544697510062", "name": "userId", "type": 9},
          {"id": "3:7312721965252650632", "name": "userName", "type": 9},
          {"id": "4:5175569479374016875", "name": "userImageName", "type": 9},
          {"id": "5:9120802955850607256", "name": "createdAt", "type": 6},
          {"id": "6:7147422365560994248", "name": "updatedAt", "type": 6},
          {"id": "7:6084853166829554710", "name": "roomId", "type": 9}
        ]
      },
      {
        "id": "3:91527956825714340",
        "lastPropertyId": "13:1320883142978066224",
        "name": "Profile",
        "properties": [
          {"id": "1:8658089794062962487", "name": "id", "type": 6, "flags": 1},
          {"id": "2:410415128288042971", "name": "userId", "type": 9},
          {"id": "3:7938488746932275047", "name": "name", "type": 9},
          {"id": "4:3710605293618322777", "name": "birthday", "type": 6},
          {"id": "5:1071734602730400485", "name": "genderId", "type": 6},
          {"id": "6:3469061368025945753", "name": "prefectureId", "type": 6},
          {"id": "7:2568293958252728464", "name": "imagePath", "type": 9},
          {"id": "8:3675689743520593084", "name": "description", "type": 9},
          {"id": "9:3411924965816063076", "name": "hobby", "type": 9},
          {"id": "10:2909051831281808972", "name": "favoriteType", "type": 9},
          {"id": "11:5114152655753241483", "name": "createdAt", "type": 6},
          {"id": "12:3193093107236268744", "name": "updatedAt", "type": 6}
        ]
      },
      {
        "id": "4:4231027708447266082",
        "lastPropertyId": "9:1224031232392700051",
        "name": "Message",
        "properties": [
          {"id": "1:244446210746449362", "name": "id", "type": 6, "flags": 1},
          {"id": "2:5040718065638545889", "name": "userId", "type": 9},
          {"id": "3:130275364384676917", "name": "messageId", "type": 9},
          {"id": "4:8312373972531862069", "name": "roomId", "type": 9},
          {"id": "5:226367578819678763", "name": "text", "type": 9},
          {"id": "6:342277152604035024", "name": "isUnread", "type": 1},
          {"id": "7:625511149703130775", "name": "createdAt", "type": 6},
          {"id": "8:6316478419491217965", "name": "updatedAt", "type": 6}
        ]
      },
      {
        "id": "5:7406672419176415625",
        "lastPropertyId": "8:7480231624393133459",
        "name": "Room",
        "properties": [
          {"id": "1:4452680984568176132", "name": "id", "type": 6, "flags": 1},
          {"id": "2:5865493986008073286", "name": "roomId", "type": 9},
          {"id": "3:8662649729934230458", "name": "latestMessage", "type": 9},
          {"id": "4:2948623920476094551", "name": "unreadCount", "type": 6},
          {"id": "5:4672184548496578093", "name": "createdAt", "type": 6},
          {"id": "6:7367073850068881798", "name": "updatedAt", "type": 6},
          {"id": "7:2791686665106957065", "name": "friendUserId", "type": 9},
          {"id": "8:7480231624393133459", "name": "latestMessageAt", "type": 6}
        ]
      },
      {
        "id": "6:6314685316149992662",
        "lastPropertyId": "4:325201786129085543",
        "name": "Counter",
        "properties": [
          {"id": "1:4116018202874861290", "name": "id", "type": 6, "flags": 1},
          {"id": "2:8566528410759533121", "name": "unreadCount", "type": 6},
          {"id": "3:2810343265920212191", "name": "createdAt", "type": 6},
          {"id": "4:325201786129085543", "name": "updatedAt", "type": 6}
        ]
      }
    ],
    "lastEntityId": "6:6314685316149992662",
    "lastIndexId": "0:0",
    "lastRelationId": "0:0",
    "lastSequenceId": "0:0",
    "modelVersion": 5
  }, check: false);

  final bindings = Map<Type, EntityDefinition>();
  bindings[LikeHistory] = EntityDefinition<LikeHistory>(
      model: model.findEntityByUid(834508830682371816),
      reader: (LikeHistory inst) => {
            "id": inst.id,
            "userId": inst.userId,
            "userName": inst.userName,
            "userImageName": inst.userImageName,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt
          },
      writer: (Map<String, dynamic> members) {
        LikeHistory r = LikeHistory();
        r.id = members["id"];
        r.userId = members["userId"];
        r.userName = members["userName"];
        r.userImageName = members["userImageName"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        return r;
      });
  bindings[BlockHistory] = EntityDefinition<BlockHistory>(
      model: model.findEntityByUid(7508321855245374242),
      reader: (BlockHistory inst) => {
            "id": inst.id,
            "userId": inst.userId,
            "userName": inst.userName,
            "userImageName": inst.userImageName,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt,
            "roomId": inst.roomId
          },
      writer: (Map<String, dynamic> members) {
        BlockHistory r = BlockHistory();
        r.id = members["id"];
        r.userId = members["userId"];
        r.userName = members["userName"];
        r.userImageName = members["userImageName"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        r.roomId = members["roomId"];
        return r;
      });
  bindings[Profile] = EntityDefinition<Profile>(
      model: model.findEntityByUid(91527956825714340),
      reader: (Profile inst) => {
            "id": inst.id,
            "userId": inst.userId,
            "name": inst.name,
            "birthday": inst.birthday,
            "genderId": inst.genderId,
            "prefectureId": inst.prefectureId,
            "imagePath": inst.imagePath,
            "description": inst.description,
            "hobby": inst.hobby,
            "favoriteType": inst.favoriteType,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt
          },
      writer: (Map<String, dynamic> members) {
        Profile r = Profile();
        r.id = members["id"];
        r.userId = members["userId"];
        r.name = members["name"];
        r.birthday = members["birthday"];
        r.genderId = members["genderId"];
        r.prefectureId = members["prefectureId"];
        r.imagePath = members["imagePath"];
        r.description = members["description"];
        r.hobby = members["hobby"];
        r.favoriteType = members["favoriteType"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        return r;
      });
  bindings[Message] = EntityDefinition<Message>(
      model: model.findEntityByUid(4231027708447266082),
      reader: (Message inst) => {
            "id": inst.id,
            "userId": inst.userId,
            "messageId": inst.messageId,
            "roomId": inst.roomId,
            "text": inst.text,
            "isUnread": inst.isUnread,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt
          },
      writer: (Map<String, dynamic> members) {
        Message r = Message();
        r.id = members["id"];
        r.userId = members["userId"];
        r.messageId = members["messageId"];
        r.roomId = members["roomId"];
        r.text = members["text"];
        r.isUnread = members["isUnread"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        return r;
      });
  bindings[Room] = EntityDefinition<Room>(
      model: model.findEntityByUid(7406672419176415625),
      reader: (Room inst) => {
            "id": inst.id,
            "roomId": inst.roomId,
            "latestMessage": inst.latestMessage,
            "unreadCount": inst.unreadCount,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt,
            "friendUserId": inst.friendUserId,
            "latestMessageAt": inst.latestMessageAt
          },
      writer: (Map<String, dynamic> members) {
        Room r = Room();
        r.id = members["id"];
        r.roomId = members["roomId"];
        r.latestMessage = members["latestMessage"];
        r.unreadCount = members["unreadCount"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        r.friendUserId = members["friendUserId"];
        r.latestMessageAt = members["latestMessageAt"];
        return r;
      });
  bindings[Counter] = EntityDefinition<Counter>(
      model: model.findEntityByUid(6314685316149992662),
      reader: (Counter inst) => {
            "id": inst.id,
            "unreadCount": inst.unreadCount,
            "createdAt": inst.createdAt,
            "updatedAt": inst.updatedAt
          },
      writer: (Map<String, dynamic> members) {
        Counter r = Counter();
        r.id = members["id"];
        r.unreadCount = members["unreadCount"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
        return r;
      });

  return ModelDefinition(model, bindings);
}

class LikeHistory_ {
  static final id =
      QueryIntegerProperty(entityId: 1, propertyId: 1, obxType: 6);
  static final userId =
      QueryStringProperty(entityId: 1, propertyId: 2, obxType: 9);
  static final userName =
      QueryStringProperty(entityId: 1, propertyId: 3, obxType: 9);
  static final userImageName =
      QueryStringProperty(entityId: 1, propertyId: 4, obxType: 9);
  static final createdAt =
      QueryIntegerProperty(entityId: 1, propertyId: 5, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 1, propertyId: 6, obxType: 6);
}

class BlockHistory_ {
  static final id =
      QueryIntegerProperty(entityId: 2, propertyId: 1, obxType: 6);
  static final userId =
      QueryStringProperty(entityId: 2, propertyId: 2, obxType: 9);
  static final userName =
      QueryStringProperty(entityId: 2, propertyId: 3, obxType: 9);
  static final userImageName =
      QueryStringProperty(entityId: 2, propertyId: 4, obxType: 9);
  static final createdAt =
      QueryIntegerProperty(entityId: 2, propertyId: 5, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 2, propertyId: 6, obxType: 6);
  static final roomId =
      QueryStringProperty(entityId: 2, propertyId: 7, obxType: 9);
}

class Profile_ {
  static final id =
      QueryIntegerProperty(entityId: 3, propertyId: 1, obxType: 6);
  static final userId =
      QueryStringProperty(entityId: 3, propertyId: 2, obxType: 9);
  static final name =
      QueryStringProperty(entityId: 3, propertyId: 3, obxType: 9);
  static final birthday =
      QueryIntegerProperty(entityId: 3, propertyId: 4, obxType: 6);
  static final genderId =
      QueryIntegerProperty(entityId: 3, propertyId: 5, obxType: 6);
  static final prefectureId =
      QueryIntegerProperty(entityId: 3, propertyId: 6, obxType: 6);
  static final imagePath =
      QueryStringProperty(entityId: 3, propertyId: 7, obxType: 9);
  static final description =
      QueryStringProperty(entityId: 3, propertyId: 8, obxType: 9);
  static final hobby =
      QueryStringProperty(entityId: 3, propertyId: 9, obxType: 9);
  static final favoriteType =
      QueryStringProperty(entityId: 3, propertyId: 10, obxType: 9);
  static final createdAt =
      QueryIntegerProperty(entityId: 3, propertyId: 11, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 3, propertyId: 12, obxType: 6);
}

class Message_ {
  static final id =
      QueryIntegerProperty(entityId: 4, propertyId: 1, obxType: 6);
  static final userId =
      QueryStringProperty(entityId: 4, propertyId: 2, obxType: 9);
  static final messageId =
      QueryStringProperty(entityId: 4, propertyId: 3, obxType: 9);
  static final roomId =
      QueryStringProperty(entityId: 4, propertyId: 4, obxType: 9);
  static final text =
      QueryStringProperty(entityId: 4, propertyId: 5, obxType: 9);
  static final isUnread =
      QueryBooleanProperty(entityId: 4, propertyId: 6, obxType: 1);
  static final createdAt =
      QueryIntegerProperty(entityId: 4, propertyId: 7, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 4, propertyId: 8, obxType: 6);
}

class Room_ {
  static final id =
      QueryIntegerProperty(entityId: 5, propertyId: 1, obxType: 6);
  static final roomId =
      QueryStringProperty(entityId: 5, propertyId: 2, obxType: 9);
  static final latestMessage =
      QueryStringProperty(entityId: 5, propertyId: 3, obxType: 9);
  static final unreadCount =
      QueryIntegerProperty(entityId: 5, propertyId: 4, obxType: 6);
  static final createdAt =
      QueryIntegerProperty(entityId: 5, propertyId: 5, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 5, propertyId: 6, obxType: 6);
  static final friendUserId =
      QueryStringProperty(entityId: 5, propertyId: 7, obxType: 9);
  static final latestMessageAt =
      QueryIntegerProperty(entityId: 5, propertyId: 8, obxType: 6);
}

class Counter_ {
  static final id =
      QueryIntegerProperty(entityId: 6, propertyId: 1, obxType: 6);
  static final unreadCount =
      QueryIntegerProperty(entityId: 6, propertyId: 2, obxType: 6);
  static final createdAt =
      QueryIntegerProperty(entityId: 6, propertyId: 3, obxType: 6);
  static final updatedAt =
      QueryIntegerProperty(entityId: 6, propertyId: 4, obxType: 6);
}
