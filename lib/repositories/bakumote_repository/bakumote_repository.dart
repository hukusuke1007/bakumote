import 'dart:convert';

import 'package:bakumote/repositories/bakumote_repository/entities/user.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';

final bakumoteRepositoryProvider =
    Provider<BakumoteRepository>((_) => BakumoteRepositoryImpl());

abstract class BakumoteRepository {
  Future<List<User>> loadUsers();
}

class BakumoteRepositoryImpl extends BakumoteRepository {
  @override
  Future<List<User>> loadUsers() async {
    final raw = await rootBundle.loadString('assets/json/users.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final data = json['data'] as List<dynamic>;
    return data
        .map((dynamic e) => User.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
