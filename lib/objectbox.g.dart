// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:objectbox/objectbox.dart';
export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file
import 'repositories/bakumote_repository/entities/profile.dart';
import 'repositories/bakumote_repository/entities/block_history.dart';
import 'repositories/bakumote_repository/entities/like_history.dart';

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
        "lastPropertyId": "6:7147422365560994248",
        "name": "BlockHistory",
        "properties": [
          {"id": "1:5221870660787891588", "name": "id", "type": 6, "flags": 1},
          {"id": "2:9103788544697510062", "name": "userId", "type": 9},
          {"id": "3:7312721965252650632", "name": "userName", "type": 9},
          {"id": "4:5175569479374016875", "name": "userImageName", "type": 9},
          {"id": "5:9120802955850607256", "name": "createdAt", "type": 6},
          {"id": "6:7147422365560994248", "name": "updatedAt", "type": 6}
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
          {"id": "12:3193093107236268744", "name": "updatedAt", "type": 6},
          {"id": "13:1320883142978066224", "name": "myProfileId", "type": 6}
        ]
      }
    ],
    "lastEntityId": "3:91527956825714340",
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
            "updatedAt": inst.updatedAt
          },
      writer: (Map<String, dynamic> members) {
        BlockHistory r = BlockHistory();
        r.id = members["id"];
        r.userId = members["userId"];
        r.userName = members["userName"];
        r.userImageName = members["userImageName"];
        r.createdAt = members["createdAt"];
        r.updatedAt = members["updatedAt"];
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
            "updatedAt": inst.updatedAt,
            "myProfileId": inst.myProfileId
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
        r.myProfileId = members["myProfileId"];
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
  static final myProfileId =
      QueryIntegerProperty(entityId: 3, propertyId: 13, obxType: 6);
}
