import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';

abstract class LocalNotificationService {
  void init();

  void showNotification({
    required int id,
    required String title,
    required String body,
    @required Map<String, dynamic>? payload,
  });

  void _requestPermissionToSendNotifications();
  showNotificationFromJsonData(Map<String, dynamic> data);
}

@Singleton(as: LocalNotificationService)
class LocalNotificationServiceImpl implements LocalNotificationService {
  LocalNotificationServiceImpl(this._awesomeNotifications);

  // LocalNotificationServiceImpl.private(this._awesomeNotifications);
  // factory LocalNotificationServiceImpl() => _instance;
  // static final LocalNotificationServiceImpl _instance =LocalNotificationServiceImpl.private(
  //   AwesomeNotifications(),
  // );

  final AwesomeNotifications _awesomeNotifications;
  @override
  init() {
    printInfo(info: 'init local notification service');
    _requestPermissionToSendNotifications();
    _awesomeNotifications.initialize(
      // set the icon to null if you want to use the default app icon
      // null,
      'resource://drawable/res_notification_app_icon',
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'basic_channel',
          channelDescription: 'Notification channel for basic tests',
          importance: NotificationImportance.Max,
          defaultColor: const Color(0xFF69A03A),
          ledColor: Colors.white,
          playSound: true,
          enableLights: true,
          enableVibration: true,
          channelShowBadge: true,
        )
      ],
      debug: true,
    );
    _listenToLocalNotificationsActionStream();
  }


  @override
  void _requestPermissionToSendNotifications() {
    printInfo(info: 'request permission to send notifications');
    _awesomeNotifications.isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        _awesomeNotifications.requestPermissionToSendNotifications();
      }
    });
  }

  _listenToLocalNotificationsActionStream() {
    printInfo(info: 'listen to local notifications action stream');
    _awesomeNotifications.actionStream.listen((notification) {
      printInfo(info: 'action stream: ${notification.channelKey}');
      if (notification.channelKey == 'basic_channel' && Platform.isIOS) {
        _awesomeNotifications.getGlobalBadgeCounter().then(
              (value) => _awesomeNotifications.setGlobalBadgeCounter(value - 1),
            );
      }

      Get.toNamed(MobileRoutes.Notification);
    });
  }

  @override
  showNotification({
    required int id,
    required String title,
    required String body,
    @required Map<String, dynamic>? payload,
  }) {
    // Map<String, String>? payload_data = payload as Map<String, String>??{};
    NotificationContent channel = NotificationContent(
      id: id,
      channelKey: 'basic_channel',
      title:
          '${Emojis.plant_cactus} $title',
      body: body,
      // payload: payload,
      // bigPicture: 'asset://assets/notification_map.png',
      // notificationLayout: NotificationLayout.BigPicture,
    );

    _awesomeNotifications.createNotification(
      content: channel,
    );
  }

  @override
  showNotificationFromJsonData(Map<String, dynamic> data){
    _awesomeNotifications.createNotificationFromJsonData(data);
  }
}
