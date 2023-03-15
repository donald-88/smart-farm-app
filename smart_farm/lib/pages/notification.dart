import 'package:flutter/material.dart';
import '../util/notification.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: TextStyle(fontSize: 30, color: Colors.grey[700]),
                ),
                // user account logo
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.more_horiz_outlined)),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          NotificationComponent(
            title: 'New message',
            message: 'You have a new message from John.',
            color: 0xDC3545DC3545,
          ),
          NotificationComponent(
            title: 'Germination Stage',
            message: 'Strawberries are in Germination stage',
            color: 0x198754198754,
          ),
        ],
      )),
    );
  }
}
