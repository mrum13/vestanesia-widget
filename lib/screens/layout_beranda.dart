import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class BerandaLayout extends StatelessWidget {
  const BerandaLayout({ Key? key }) : super(key: key);

   Widget _iconChat() {
    return Align(
        child: SvgPicture.asset("images/Chat.svg"),
    );
  }

  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wLogoVestanesia(marginTop: EdgeInsets.all(0)),
          _iconChat()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _costumAppbar(),  
          ])
      ],
    );
  }
}