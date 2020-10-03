import 'package:bakumote/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/all.dart';

import 'directory.dart' as dir;
import 'logger.dart' as logger;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// 縦固定
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// 初期化
  await dir.configure();
  logger.configure();

  runApp(ProviderScope(child: App()));
}
