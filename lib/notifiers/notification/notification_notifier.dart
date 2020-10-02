import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'notification_notifier.freezed.dart';

final notificationNotifierProvider =
    StateNotifierProvider<NotificationNotifier>(
        (ref) => NotificationNotifier(ref.read));

@freezed
abstract class NotificationState with _$NotificationState {
  factory NotificationState({
    @Default(false) bool isLoading,
  }) = _NotificationState;
}

class NotificationNotifier extends StateNotifier<NotificationState>
    with LocatorMixin {
  NotificationNotifier(
    this._read,
  ) : super(NotificationState());

  final Reader _read;

  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings _initializationSettingsAndroid;
  IOSInitializationSettings _initializationSettingsIOS;
  InitializationSettings _initializationSettings;

  final androidChannelId = 'bakumote_notification_id';
  final androidChannelName = 'bakumote_name';
  final androidChannelDescription = 'bakumote_description';

  Future<void> configure() async {
    /// Android
    _initializationSettingsAndroid =
        const AndroidInitializationSettings('alert_icon');

    if (Platform.isAndroid) {
      await createAndroidNotificationChannel(
        channelId: androidChannelId,
        name: androidChannelName,
        description: androidChannelDescription,
      );
    }

    /// iOS
    _initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification:
          (int id, String title, String body, String payload) async {
        print('notification payload: $payload');
      },
    );

    _initializationSettings = InitializationSettings(
        _initializationSettingsAndroid, _initializationSettingsIOS);
  }

  Future<void> createAndroidNotificationChannel({
    @required String channelId,
    @required String name,
    @required String description,
  }) async {
    final androidNotificationChannel = AndroidNotificationChannel(
      channelId,
      name,
      description,
    );
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        .createNotificationChannel(androidNotificationChannel);
  }

  Future<bool> requestPermissions() async {
    if (Platform.isIOS) {
      return _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
    return null;
  }

  Future<void> showDelayed({
    @required String title,
    @required String body,
    String payload,
    @required Duration duration,
    Future<dynamic> Function(String payload) onSelectNotification,
  }) async {
    final androidPlatformChannelSpecifics = AndroidNotificationDetails(
        androidChannelId, androidChannelName, androidChannelDescription,
        importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
    const iOSPlatformChannelSpecifics = IOSNotificationDetails();
    final platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.initialize(_initializationSettings,
        onSelectNotification: onSelectNotification);
    await _flutterLocalNotificationsPlugin.schedule(
      0,
      title,
      body,
      DateTime.now().add(duration),
      platformChannelSpecifics,
      payload: payload,
    );
  }

  Future<void> cancel() => _flutterLocalNotificationsPlugin.cancelAll();
}
