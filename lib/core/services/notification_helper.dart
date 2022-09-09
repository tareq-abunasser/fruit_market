// import 'dart:convert';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:fruit_market/routes/mobile_app_pages.dart';
// import 'package:get/get.dart';
// import 'package:injectable/injectable.dart';
// import 'package:rxdart/rxdart.dart';
//
// @Singleton()
// class NotificationHelper {
//   NotificationHelper(this.messaging);
//
//   final FirebaseMessaging messaging;
//   // static final onNotification = BehaviorSubject<String?>();
//   initNotification() async {
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
//
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     RemoteMessage? message = await messaging.getInitialMessage();
//     if (message != null) {
//       Get.toNamed(MobileRoutes.Notification);
//     }
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print('Got a message whilst in the foreground!');
//       print('Message data: ${message.data}');
//       print('Message title: ${message.notification!.title!}');
//       print('Message body: ${message.notification!.body!}');
//       localNotification(
//           title: message.notification!.title!,
//           body: message.notification!.body!,
//           payload: json.encode(message.data));
//       if (message.notification != null) {
//         print('Message also contained a notification: ${message.notification}');
//       }
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print('onMessageOpenedApp data: ${message.data}');
//       Get.toNamed(MobileRoutes.Notification);
//       // if(message.data['type'] =='product'){
//       //   print(message.data['productid']);
//       // }
//       print('onMessageOpenedApp title: ${message.notification!.title!}');
//       print('onMessageOpenedApp body: ${message.notification!.body!}');
//       if (message.notification != null) {
//         print('Message also contained a notification: ${message.notification}');
//       }
//     });
//     await FirebaseMessaging.instance.subscribeToTopic('all');
//     getFcmToken();
//
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
// // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const IOSInitializationSettings initializationSettingsIOS =
//         IOSInitializationSettings();
//     const MacOSInitializationSettings initializationSettingsMacOS =
//         MacOSInitializationSettings();
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS,
//             macOS: initializationSettingsMacOS);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: selectNotification);
//   }
//
//   getFcmToken() async {
//     String? fcmToken = await messaging.getToken();
//     print('fcmToken  $fcmToken');
//     return fcmToken;
//   }
//
//   void selectNotification(String? payload) async {
//
//     if (payload != null) {
//       // onNotification.add(payload);
//       // debugPrint('notification payload: $payload');
//       print(payload);
//       Map data = json.decode(payload);
//       print('data selectNotification');
//       print(data);
//       Get.toNamed(MobileRoutes.Notification);
//     }
//   }
//
//   localNotification({
//     required String title,
//     required String body,
//     required String payload,
//   }) async {
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails('your channel id', 'your channel name',
//             channelDescription: 'your channel description',
//             importance: Importance.max,
//             priority: Priority.high,
//             ticker: 'ticker');
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics, iOS: IOSNotificationDetails());
//     await flutterLocalNotificationsPlugin.show(
//         0, 'plain title', 'plain body', platformChannelSpecifics,
//         payload: payload);
//   }
//
//   Future<void> _firebaseMessagingBackgroundHandler(
//       RemoteMessage message) async {
//     print("Handling a background message: ${message.messageId}");
//   }
// }
