import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vestanesia_widgets/screens/layout_detail_bantuan.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class BantuanLayout extends StatefulWidget {
  const BantuanLayout({Key? key}) : super(key: key);

  @override
  _BantuanLayoutState createState() => _BantuanLayoutState();
}

class _BantuanLayoutState extends State<BantuanLayout> {
  Widget _costumAppbar() {
    return wCostumAppBarBack(title: 'Bantuan');
  }

  Widget _opsiBantuan({required Function() intent, required String text}) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(text), Icon(Icons.keyboard_arrow_right)],
        ),
      ),
      onTap: intent,
    );
  }

  Widget _isinya() {
    return Column(
      children: <Widget>[
        _opsiBantuan(
            text: 'Apa itu Vestanesia ?',
            intent: () => wPushTo(context, DetailBantuan())),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              height: 1,
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SafeArea(child: _costumAppbar()),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F7FA),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      _isinya(),
                      _isinya(),
                      _isinya(),
                      _isinya(),
                      _isinya(),
                      _isinya(),
                    ],
                  )))
          ],
        ),
      ),
    );
  }
}
