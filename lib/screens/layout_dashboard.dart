import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/screens/layout_beranda.dart';
import 'package:vestanesia_widgets/screens/layout_forgot_pass.dart';
import 'package:vestanesia_widgets/screens/layout_lainnya.dart';
import 'package:vestanesia_widgets/screens/layout_lengkapi_data1.dart';
import 'package:vestanesia_widgets/screens/layout_login.dart';
import 'package:vestanesia_widgets/screens/layout_notification.dart';
import 'package:vestanesia_widgets/screens/layout_program.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      pageController.jumpToPage(index);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: <Widget>[
          BerandaLayout(),
          ProgramLayout(),
          NotificationLayout(),
          LainnyaLayout()],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w600,))),
        child: Container(
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.grey, blurRadius: 15)
          ]),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? new SvgPicture.asset("images/homeActive.svg")
                      : new SvgPicture.asset("images/homeInactive.svg"),
                  label: ('Beranda'),
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? new SvgPicture.asset("images/programActive.svg")
                      : new SvgPicture.asset("images/programInactive.svg"),
                  label: 'Program',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? new SvgPicture.asset("images/notificationActive.svg")
                      : new SvgPicture.asset("images/notificationInactive.svg"),
                  label: 'Notifikasi',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? new SvgPicture.asset("images/moreActive.svg")
                      : new SvgPicture.asset("images/moreInactive.svg"),
                  label: 'Lainnya',
                  backgroundColor: Colors.white),
            ],
            selectedItemColor: Color(0xFF30995B),
          ),
        ),
      ),
    );
  }
}
