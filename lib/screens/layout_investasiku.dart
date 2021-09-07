import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/screens/layout_investasiku_berjalan.dart';
import 'package:vestanesia_widgets/screens/layout_investasiku_selesai.dart';
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
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
          )
        ]
      ),
      child: Stack(
        children: <Widget>[
          SvgPicture.asset("images/Back.svg"),
          Center(
            child: Text('Investasiku', 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700

              ),),
          )
        ],
      ),
    ); 
  }

  Widget _tapBarWithView(BuildContext context) {
    return DefaultTabController(
        length: 2,
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
                  child: Text('Sedang Berjalan'),
                ),
                Container(
                  child: Text('Selesai'),
                ),
              ]),
            ),
            ///tabview
            Container( 
              color: Color(0xFFF4F7FA),
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.only(bottom: 150),
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: <Widget>[
                Container(
                  child: InvestasikuBerjalan(),
                ),
                Container(
                  child: InvestasikuSelesai(),
                ),
              ]),
            ),
          ],
        ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFFF4F7FA),
          child: Column(
            children: <Widget>[
              _costumAppbar(),
              _tapBarWithView(context)
            ],
          ),
          )
        ],
      ),
    );
  }
}
