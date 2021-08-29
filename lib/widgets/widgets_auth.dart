import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget wLogoVestanesia({required dynamic marginTop}) {
  return Container(
    margin: marginTop,
    width: 145,
    height: 36,
    child: Column(children: <Widget>[
      SvgPicture.asset("images/Logo.svg"),
    ]),
  );
}

Widget wLogoOnlyVestanesia({required dynamic marginTop}) {
  return Container(
    margin: marginTop,
    child: Column(children: <Widget>[
      SvgPicture.asset("images/Frame.svg"),
    ]),
  );
}

Widget wAuthTitle({required String title}) {
  return Container(
    margin: EdgeInsets.only(top: 38),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}



Widget wAuthSubtitle({required String subtitle, required dynamic edgeInsets}) {
  return Container(
    margin: edgeInsets,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(subtitle,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
      ],
    ),
  );
}

Widget wForgotPass(
    {required String textForgotPass, required Function() onTap}) {
  return GestureDetector(
    child: Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
        child: Text(
          textForgotPass,
          style: TextStyle(color: Color(0xFF168039), fontSize: 14),
        ),
      ),
    ),
    onTap: onTap,
  );
} 

Widget wDivider(
    {required String textDivider, required EdgeInsets marginDivider}) {
  return Container(
    margin: marginDivider,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            textDivider,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}

Widget wGoogleFBSignIn({required Function() onPressed}) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          height: 48,
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Icon(
              MdiIcons.google,
              size: 20,
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  width: 1,
                  color: Color(0xFFEE684F),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Color(0xFFEE684F))),
            label: Text('Google'),
            onPressed: onPressed,
          ),
        ),
      ),
      SizedBox(
        width: 22,
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          height: 48,
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Icon(
              MdiIcons.facebook,
              size: 20,
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(
                  width: 1,
                  color: Color(0xFF3B5998),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Color(0xFF3B5998))),
            label: Text('Facebook'),
            onPressed: onPressed,
          ),
        ),
      ),
    ],
  );
}

Widget wTextLink(
    {required String text, required String title, required Function() onTap}) {
  return Container(
    margin: EdgeInsets.only(top: 32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF168039),
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationStyle: TextDecorationStyle.solid
              ),
            ),
          ),
          onTap: onTap,
        )
      ],
    ),
  );
}
