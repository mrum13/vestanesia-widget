
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/screens/layout_program_semua.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class ProgramLayout extends StatelessWidget {
  const ProgramLayout({Key? key}) : super(key: key);

  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wLogoOnlyVestanesia(marginTop: EdgeInsets.all(0)),
          _textAppbar(),
          _iconChat()
        ],
      ),
    );
  }

  Widget _iconChat() {
    return Align(
      child: SvgPicture.asset("images/Chat.svg"),
    );
  }

  Widget _textAppbar() {
    return Text(
      'Program',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }

  Widget _tapBarWithView(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 32,
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xFFD9E0EC))),
              child: TabBar(
                
                indicator: BoxDecoration(
                  color: Color(0xFF168039)
                ),
                unselectedLabelColor: Color(0xFF848484),
                labelColor: Colors.white,
                tabs: <Widget>[
                Container(
                  child: Text('Semua'),
                ),
                Container(
                  
                  child: Text('Tersedia'),
                ),
                Container(
                  child: Text('Selesai'),
                ),
              ]),
            ),
            ///tabview
            Container( 
              margin: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber
                  ),
                  child: ProgramSemua(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Text('2'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent
                  ),
                  child: Text('3'),
                ),
              ]),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _costumAppbar(),
            _tapBarWithView(context)
          ],
        )
      ],
    );
  }
}
