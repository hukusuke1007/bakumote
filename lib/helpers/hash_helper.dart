import 'package:hashids2/hashids2.dart';
import 'package:uuid/uuid.dart';

class HashHelper {
  static String shortUuid({
    String salt,
    int length = 8,
  }) {
    salt ??= Uuid().v4();
    final hashIds = HashIds(
      salt: salt,
      minHashLength: length,
      alphabet:
          'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
    );
    final id = hashIds.encode([1, 2, 3]);
    return id;
  }

  static String uuid() => Uuid().v4();
}
