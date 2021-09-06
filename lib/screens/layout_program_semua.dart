import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ProgramSemua extends StatelessWidget {
  const ProgramSemua
({ Key? key }) : super(key: key);

  Widget _card(){
    return wCardVestanesia(imageAsset: "images/pisang1.png");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _card()
          ],      
        )
      ],
    );
  }
}