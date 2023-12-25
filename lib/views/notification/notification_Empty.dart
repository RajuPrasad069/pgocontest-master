import 'package:flutter/material.dart';

class NotificationEmpty extends StatefulWidget {
  const NotificationEmpty({super.key});

  @override
  State<NotificationEmpty> createState() => _NotificationEmptyState();
}

class _NotificationEmptyState extends State<NotificationEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text("Notification"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/notificationEmpty.png"),
              Text("No Notification",style: TextStyle(
                color: Colors.grey[400],fontWeight: FontWeight.bold,
                fontSize: 18
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
