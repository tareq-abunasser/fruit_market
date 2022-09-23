import 'dart:convert';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:io';

import '../../injection.dart';
import 'local_notification_service.dart';

abstract class RemoteNotificationService {
  void init();
}

@LazySingleton(as: RemoteNotificationService)
class RemoteNotificationServiceImpl implements RemoteNotificationService {
  RemoteNotificationServiceImpl(
      this._messaging, this._localNotificationService);

  final FirebaseMessaging _messaging;
  final LocalNotificationService _localNotificationService;

  @override
  init() async {
    await _requestPermissionToSendNotifications();
    _setForegroundNotificationPresentationOptions();
    _initTerminatedState();
    _listenToNotificationInForeground();
    _actionWhenBackgroundNotificationOpened();
    _messaging.getToken().then((value) => print('token: $value'));
  }

  Future<void> _requestPermissionToSendNotifications() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    print('User granted permission: ${settings.authorizationStatus}');
  }

   _checkPermissions() async {
    NotificationSettings settings = await _messaging.getNotificationSettings();
    return settings.authorizationStatus;
  }

  _listenToNotificationInForeground() {
    printInfo(info: 'listen to notification in foreground');
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // print('Got a message whilst in the foreground!');
      // print('Message data: ${message.data}');
      // print('Message title: ${message.notification!.title!}');
      // print('Message body: ${message.notification!.body!}');
      _showNotification(message);
    });
  }

  _initTerminatedState() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    printInfo(info: '_initTerminatedState : init terminated state');
    RemoteMessage? initialMessage = await _messaging.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      printInfo(info: '_initTerminatedState : initialMessage != null');
      _handleMessage(initialMessage);
    }
  }

  _actionWhenBackgroundNotificationOpened() {
    // Also handle any interaction when the app is in the background via a
    // Stream listener
    printInfo(info: '_initBackgroundState : listen to notification in background');
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      _handleMessage(message);
    });

    // FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    Get.toNamed(MobileRoutes.Search);
    // if (message.data['type'] == 'chat') {
    //
    // }
  }


  _setForegroundNotificationPresentationOptions() {
    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _showNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null && !kIsWeb) {
      _localNotificationService.showNotification(
        id: message.hashCode,
        body: message.notification!.body!,
        title: message.notification!.title!,
        payload: message.data,
      );
    }
  }
}

// @pragma('vm:entry-point')
