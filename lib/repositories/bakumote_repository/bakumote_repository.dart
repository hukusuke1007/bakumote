import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';

final bakumoteRepositoryProvider =
    Provider<BakumoteRepository>((_) => BakumoteRepositoryImpl());

abstract class BakumoteRepository {
  Future<Map<String, dynamic>> loadUsers();
}

class BakumoteRepositoryImpl extends BakumoteRepository {
  @override
  Future<Map<String, dynamic>> loadUsers() async {
    final data = await rootBundle.loadString('assets/json/users.json');
    return jsonDecode(data) as Map<String, dynamic>;
  }
}
