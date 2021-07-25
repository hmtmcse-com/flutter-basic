import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => (runApp(FlutterLocalNotifications()));


class FlutterLocalNotifications extends StatelessWidget {


  FlutterLocalNotificationsPlugin initState() {
    FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    final IOSInitializationSettings iosSettings = IOSInitializationSettings();
    final InitializationSettings initSettings = InitializationSettings(android: androidSettings, iOS: iosSettings);
    notificationsPlugin.initialize(initSettings);
    return notificationsPlugin;
  }

  Future<void> _showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');
    const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    await initState().show(
        0, 'plain title', 'plain body', platformChannelSpecifics,
        payload: 'item x');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Local Notifications Example Code'),
        ),
        body: ElevatedButton(
          onPressed: () {
            _showNotification();
          },
          child: Text('Notification'),
        ),
      ),
    );
  }
}
