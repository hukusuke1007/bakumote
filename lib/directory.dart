import 'dart:io';

import 'package:path_provider/path_provider.dart';

Directory get appDocumentDir => _appDocumentDir;
Directory _appDocumentDir;

Future<void> configure() async {
  _appDocumentDir = await getApplicationDocumentsDirectory();
}
