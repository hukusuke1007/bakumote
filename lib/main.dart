import 'package:bakumote/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import 'directory.dart' as dir;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dir.configure();
  runApp(ProviderScope(child: App()));
}
