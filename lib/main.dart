import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vestanesia_widgets/screens/layout_dashboard.dart';
import 'package:vestanesia_widgets/screens/layout_detail_investasi.dart';
import 'package:vestanesia_widgets/screens/layout_lengkapi_data2.dart';
import 'package:vestanesia_widgets/screens/layout_login.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      home: Dashboard()
    );
  }
}        