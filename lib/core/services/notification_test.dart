// import 'dart:convert';
// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:fruit_market/injection.dart';
// import 'package:fruit_market/routes/mobile_app_pages.dart';
// import 'package:get/get.dart';
// import 'package:injectable/injectable.dart';
// import 'package:rxdart/rxdart.dart';
// import 'dart:io';
//
// import '../entities/value_objects.dart';
//
// // abstract class NotificationHelper1 {
// //   void requestNotificationPermission();
// //   void init();
// //   void initLocalNotification();
// //   void initRemoteNotification();
// //   void showLocalNotification();
// // }
// //
// // @LazySingleton(as: NotificationHelper1)
// // class NotificationHelperImpl implements NotificationHelper1 {
// //   final FirebaseMessaging _messaging;
// //   final AwesomeNotifications _awesomeNotifications;
// //
// //   NotificationHelperImpl(this._messaging, this._awesomeNotifications);
// //
// //   @override
// //   void requestNotificationPermission() {
// //     _awesomeNotifications.isNotificationAllowed().then((isAllowed) {
// //       if (!isAllowed) {
// //         _awesomeNotifications.requestPermissionToSendNotifications();
// //       }
// //     });
// //   }
// //
// //   @override
// //   void init() {
// //     // TODO: implement init
// //   }
// //
// //   @override
// //   void initLocalNotification() {
// //     // TODO: implement _initLocalNotification
// //   }
// //
// //   @override
// //   void initRemoteNotification() {
// //     // TODO: implement _initRemoteNotification
// //   }
// //
// //   @override
// //   void showLocalNotification() {
// //     // TODO: implement showLocalNotification
// //   }
// // }
//
// @LazySingleton()
// class NotificationHelper {
//   NotificationHelper(this.messaging);
//
//   final FirebaseMessaging messaging;
//
//   // static final onNotification = BehaviorSubject<String?>();
//
//   init() async {
//     await requestPermissionForRemoteNotification();
//     initRemoteNotification();
//     requestPermissionForLocalNotification();
//     initLocalNotification();
//   }
//
//   Future<void> requestPermissionForRemoteNotification() async {
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     print('User granted permission: ${settings.authorizationStatus}');
//   }
//
//   requestPermissionForLocalNotification() {
//     AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
//       if (!isAllowed) {
//         AwesomeNotifications().requestPermissionToSendNotifications();
//       }
//     });
//   }
//
//   remoteForegroundNotification() {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print('Got a message whilst in the foreground!');
//       print('Message data: ${message.data}');
//       print('Message title: ${message.notification!.title!}');
//       print('Message body: ${message.notification!.body!}');
//       showLocalNotification(message);
//       //   localNotification(
//       //       title: message.notification!.title!,
//       //       body: message.notification!.body!,
//       //       payload: json.encode(message.data));
//       //
//       //   if (message.notification != null) {
//       //     print('Message also contained a notification: ${message.notification}');
//       //   }
//       // });
//
//       // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       //   print('onMessageOpenedApp data: ${message.data}');
//       //   Get.toNamed(MobileRoutes.Notification);
//       //   // if(message.data['type'] =='product'){
//       //   //   print(message.data['productid']);
//       //   // }
//       //   print('onMessageOpenedApp title: ${message.notification!.title!}');
//       //   print('onMessageOpenedApp body: ${message.notification!.body!}');
//       //   if (message.notification != null) {
//       //     print('Message also contained a notification: ${message.notification}');
//       //   }
//       // }
//     });
//   }
//
//   remoteBackgroundNotification() {
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   }
//
//   initRemoteNotification() async {
//     remoteForegroundNotification();
//     remoteBackgroundNotification();
//     // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     // RemoteMessage? message = await messaging.getInitialMessage();
//     // if (message != null) {
//     //   Get.toNamed(MobileRoutes.Notification);
//     // }
//     //
//     // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     //   print('Got a message whilst in the foreground!');
//     //   print('Message data: ${message.data}');
//     //   print('Message title: ${message.notification!.title!}');
//     //   print('Message body: ${message.notification!.body!}');
//     //   //   localNotification(
//     //   //       title: message.notification!.title!,
//     //   //       body: message.notification!.body!,
//     //   //       payload: json.encode(message.data));
//     //   //
//     //   //   if (message.notification != null) {
//     //   //     print('Message also contained a notification: ${message.notification}');
//     //   //   }
//     //   // });
//     //
//     //   // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     //   //   print('onMessageOpenedApp data: ${message.data}');
//     //   //   Get.toNamed(MobileRoutes.Notification);
//     //   //   // if(message.data['type'] =='product'){
//     //   //   //   print(message.data['productid']);
//     //   //   // }
//     //   //   print('onMessageOpenedApp title: ${message.notification!.title!}');
//     //   //   print('onMessageOpenedApp body: ${message.notification!.body!}');
//     //   //   if (message.notification != null) {
//     //   //     print('Message also contained a notification: ${message.notification}');
//     //   //   }
//     //   // }
//     // });
//   }
//
//   initLocalNotification() {
//     AwesomeNotifications().initialize(
//       // set the icon to null if you want to use the default app icon
//       // 'resource://drawable/res_app_icon',
//       null,
//       [
//         NotificationChannel(
//           channelGroupKey: 'basic_channel_group',
//           channelKey: 'basic_channel',
//           channelName: 'Basic notifications',
//           channelDescription: 'Notification channel for basic tests',
//           importance: NotificationImportance.High,
//           // defaultColor: Color(0xFF9D50DD),
//           // ledColor: Colors.white,
//           playSound: true,
//           enableLights: true,
//           enableVibration: true,
//           channelShowBadge: true,
//         )
//       ],
//       // Channel groups are only visual and are not required
//       channelGroups: [
//         NotificationChannelGroup(
//             channelGroupkey: 'basic_channel_group',
//             channelGroupName: 'Basic group')
//       ],
//       debug: true,
//     );
//
//     AwesomeNotifications().actionStream.listen((notification) {
//       if (notification.channelKey == 'basic_channel' && Platform.isIOS) {
//         AwesomeNotifications().getGlobalBadgeCounter().then(
//               (value) =>
//               AwesomeNotifications().setGlobalBadgeCounter(value - 1),
//         );
//       }
//
//       Get.toNamed(MobileRoutes.Notification);
//     });
//   }
//
//   showLocalNotification(RemoteMessage message) {
//     RemoteNotification? notification = message.notification;
//     AndroidNotification? android = message.notification?.android;
//     print('1showLocalNotification data: ${message.data}');
//     if (notification != null && android != null && !kIsWeb) {
//       print('2showLocalNotification data: ${message.data}');
//
//       AwesomeNotifications().createNotification(
//         content: NotificationContent(
//           id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
//           channelKey: 'basic_channel',
//           title:
//           '${Emojis.money_money_bag + Emojis.plant_cactus} Buy Plant Food!!!',
//           body: 'Florist at 123 Main St. has 2 in stock',
//           // bigPicture: 'asset://assets/notification_map.png',
//           // notificationLayout: NotificationLayout.BigPicture,
//         ),
//       );
//       print('3showLocalNotification data: ${message.data}');
//
//       // AwesomeNotifications().createNotification(
//       //     content: NotificationContent(
//       //         id: 10,
//       //         channelKey: 'basic_channel',
//       //         title: notification.title,
//       //         body: notification.body,
//       //         payload: message.data)));
//     }
//     // AwesomeNotifications().createNotificationFromJsonData(message.data);
//   }
// }
//
// // @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("Handling a background message: ${message.messageId}");
//   getIt<NotificationHelper>().showLocalNotification(message);
// }
