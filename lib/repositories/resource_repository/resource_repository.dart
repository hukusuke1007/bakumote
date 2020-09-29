import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';

final resourceRepositoryProvider =
    Provider<ResourceRepository>((_) => ResourceRepositoryImpl());

abstract class ResourceRepository {
  Future<Map<String, dynamic>> loadJson(String path);
}

class ResourceRepositoryImpl extends ResourceRepository {
  @override
  Future<Map<String, dynamic>> loadJson(String path) async {
    final data = await rootBundle.loadString(path);
    return jsonDecode(data) as Map<String, dynamic>;
  }
}
