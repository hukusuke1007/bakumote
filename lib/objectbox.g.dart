// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:objectbox/objectbox.dart';
export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file
import 'repositories/bakumote_repository/entities/like_history/like_history.dart';

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
      }
    ],
    "lastEntityId": "1:834508830682371816",
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
