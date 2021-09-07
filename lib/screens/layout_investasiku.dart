import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class Investasiku extends StatefulWidget {
  const Investasiku({Key? key}) : super(key: key);

  @override
  _InvestasikuState createState() => _InvestasikuState();
}

class _InvestasikuState extends State<Investasiku> {
  
  Widget _costumAppbar(){
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset("images/Back.svg"),
          // _textAppbar(),
        ],
      ),
    ); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFFE5E5E5),
          child: Column(
            children: <Widget>[
              _costumAppbar(),
            ],
          ),
          )
        ],
      ),
    );
  }
}
