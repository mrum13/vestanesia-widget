import 'package:flutter/material.dart';

class NotificationLayout extends StatelessWidget {
  const NotificationLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Notifikasi Coming Soon',
        style: TextStyle(fontWeight: FontWeight.w900),),
      ),
    );
  }
}