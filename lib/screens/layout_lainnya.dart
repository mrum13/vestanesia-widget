import 'package:flutter/material.dart';

class LainnyaLayout extends StatefulWidget {
  const LainnyaLayout({ Key? key }) : super(key: key);

  @override
  _LainnyaLayoutState createState() => _LainnyaLayoutState();
}

class _LainnyaLayoutState extends State<LainnyaLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('Lainnya')
          ],
        )
      ],
    );
  }
}