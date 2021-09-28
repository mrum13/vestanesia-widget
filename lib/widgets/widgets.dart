import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

///navigator push
Future wPushTo(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

///navigator pushReplace
Future wPushReplaceTo(BuildContext context, Widget widget) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

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

///button hijau
Widget wButtonSubmitGreen(
    {
    required String title,
    required Function() onPressed,
    required dynamic marginTop}) {
  return Container(
      width: double.infinity,
      height: 46,
      margin: marginTop,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF168039)),
        ),
        child: Text(title),
        onPressed: onPressed,
      ));
}

Widget wHelperInputText(
    {required String textEx, required EdgeInsets marginEx}) {
  return Container(
    margin: marginEx,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          textEx,
          style: TextStyle(color: Color(0xFF848484), fontSize: 12),
        ),
      ],
    ),
  );
}

Widget wInputText({required String hintText, required dynamic contVar}) {
  return Container(
    margin: EdgeInsets.only(top: 6),
    child: TextFormField(
      controller: contVar,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Color(0xFFF5F6F8),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF848484)),
          contentPadding: EdgeInsets.only(left: 16, right: 16)),
    ),
  );
}

Widget wTextReguler(
    {required String text,
    required dynamic alignment,
    required dynamic margin}) {
  return Container(
    margin: margin,
    child: Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget wTextHelperLengkapiData(
    {required String textHelper, required dynamic alignment}) {
  return Container(
    child: Align(
      alignment: alignment,
      child: Text(
        textHelper,
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
      ),
    ),
  );
}

Widget wHorizontalRadio() {
  return Container(
    child: Row(
      children: <Widget>[
        ButtonBar(
          children: <Widget>[
            Radio(
              activeColor: Color(0xFF168039),
              value: 0,
              groupValue: 0,
              onChanged: null,
            ),
            Text('Pria'),
            Radio(
              activeColor: Color(0xFF168039),
              value: 1,
              groupValue: 0,
              onChanged: null,
            ),
            Text('Wanita'),
          ],
        )
      ],
    ),
  );
}

Widget wHelperDoubleInput(
    {required String hintText1,
    required String hintText2,
    required dynamic margin}) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(child: wHelperInputText(textEx: hintText1, marginEx: margin)),
        SizedBox(
          width: 20,
        ),
        Expanded(child: wHelperInputText(textEx: hintText2, marginEx: margin)),
      ],
    ),
  );
}

Widget wInputAndDrop(
    {required String hintText1,
    required dynamic contVar1,
    required dynamic child}) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: contVar1,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Color(0xFFF5F6F8),
                filled: true,
                hintText: hintText1,
                hintStyle: TextStyle(color: Color(0xFF848484)),
                contentPadding: EdgeInsets.only(left: 16, right: 16)),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(child: child)
      ],
    ),
  );
}

Widget wDoubleInput(
    {required String hintText1,
    required String hintText2,
    required dynamic contVar1,
    required dynamic contVar2}) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: contVar1,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Color(0xFFF5F6F8),
                filled: true,
                hintText: hintText1,
                hintStyle: TextStyle(color: Color(0xFF848484)),
                contentPadding: EdgeInsets.only(left: 16, right: 16)),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: contVar2,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Color(0xFFF5F6F8),
                filled: true,
                hintText: hintText2,
                hintStyle: TextStyle(color: Color(0xFF848484)),
                contentPadding: EdgeInsets.only(left: 16, right: 16)),
          ),
        ),
      ],
    ),
  );
}

Widget wUploadButton({required String text}) {
  return Container(
    color: Color(0xFFF5F6F8),
    margin: EdgeInsets.only(top: 4),
    width: double.infinity,
    child: DottedBorder(
      padding: EdgeInsets.symmetric(vertical: 19),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    ),
  );
}

Widget wDividerGaris({required dynamic margin}) {
  return Container(
    margin: margin,
    child: Row(
      children: <Widget>[Expanded(child: Divider())],
    ),
  );
}

Widget wCardProgram(
    {required String imageAsset,
    required String bagiHasil,
    required String judulCard,
    required String periode,
    required String presentase,
    required String txtKiri,
    required String txtKanan,
    required String investasi,
    required String dana,
    required dynamic colorValTxtKiri,
    required String sisaHari,
    required String sisaUnit,
    required String diBuka,
    required bool ketSatu,
    required bool ketDua,
    required bool ketTiga,
    required dynamic colorButton,
    required String textButton,
    required double percentProgress,
    required bool visibleProgress,
    required Function() onPressed}) {
  return Card(
      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 140,
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(imageAsset))),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                child: Text(
                  'Bagi Hasil ' + bagiHasil + ' Bulan',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(8)),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Column(
              children: <Widget>[
                Text(
                  judulCard,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Periode Imbal',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Presentase Imbal',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Per ' + periode + ' Bulan',
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF168039),
                            borderRadius: BorderRadius.circular(4)),
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Text(
                          presentase + ' %',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        txtKiri,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        txtKanan,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Rp ' + investasi,
                        style: TextStyle(color: colorValTxtKiri),
                      ),
                      Text(
                        'Rp ' + dana,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Visibility(
                    visible: visibleProgress,
                    child: new LinearPercentIndicator(
                      lineHeight: 8.0,
                      percent: percentProgress,
                      progressColor: Colors.orange,
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Visibility(
                        visible: ketSatu,
                        child: Text(
                          'Sisa ' + sisaHari + ' Hari Lagi',
                          style: TextStyle(
                              color: Color(0xFFF25656),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Visibility(
                        visible: ketDua,
                        child: Text(
                          'Dibuka Dalam ' + diBuka + ' Hari',
                          style: TextStyle(
                              color: Color(0xFF168039),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Visibility(
                        visible: ketTiga,
                        child: Text(
                          sisaUnit + ' Unit Tersisa',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 46,
            margin: EdgeInsets.only(top: 16),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(colorButton),
                ),
                child: Text(textButton),
                onPressed: onPressed),
          )
        ],
      ));
}

Widget wCardInvestasikuAkanDatang({
  required String bagiHasil,
  required String judulCard,
  required String periode,
  required String presentase,
  required String investasi,
  required String dana,
  required String sisaHari,
  required String sisaUnit,
  required String diBuka,
  required bool ketSatu,
  required bool ketDua,
  required bool ketTiga,
  required dynamic colorButton,
  required String textButton,
  required double percentProgress,
  required bool visibleProgress,
}) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                child: Text(
                  'Bagi Hasil ' + bagiHasil + ' Bulan',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(8)),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Column(
              children: <Widget>[
                Text(
                  judulCard,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Periode Imbal',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Presentase Imbal',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Per ' + periode + ' Bulan',
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF168039),
                            borderRadius: BorderRadius.circular(4)),
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Text(
                          presentase + ' %',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total Investasi',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'target Dana',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Rp ' + investasi + ' Juta',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        'Rp ' + dana,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Visibility(
                    visible: visibleProgress,
                    child: new LinearPercentIndicator(
                      lineHeight: 8.0,
                      percent: percentProgress,
                      progressColor: Colors.orange,
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Visibility(
                        visible: ketSatu,
                        child: Text(
                          'Sisa ' + sisaHari + ' Hari Lagi',
                          style: TextStyle(
                              color: Color(0xFFF25656),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Visibility(
                        visible: ketDua,
                        child: Text(
                          'Dibuka Dalam ' + diBuka + ' Hari',
                          style: TextStyle(
                              color: Color(0xFF168039),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Visibility(
                        visible: ketTiga,
                        child: Text(
                          sisaUnit + ' Unit Tersisa',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 46,
            margin: EdgeInsets.only(top: 16),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(colorButton),
                ),
                child: Text(textButton),
                onPressed: () {}),
          )
        ],
      ));
}

Widget wCardInvestasikuSedangBerjalan(
    {required BuildContext context,
    required String bagiHasil,
    required String judulCard,
    required String investasi,
    required String imbal,
    required String tahapInvest,
    required String ketProgramInvest,
    required dynamic colorKetProgramInvest,
    required dynamic colorButton,
    required String textButton,
    required Function() onPressed}) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                child: Text(
                  'Bagi Hasil ' + bagiHasil + ' Bulan',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(8)),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Column(
              children: <Widget>[
                Text(
                  judulCard,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Investasi',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Total Imbal',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Rp ' + investasi,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Rp ' + imbal,
                        style: TextStyle(color: Color(0xFF168039)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (Text(
                            'Tahapan Investasi',
                            style: TextStyle(color: Colors.grey),
                          )),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              tahapInvest,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ketProgramInvest,
                        style: TextStyle(
                            color: colorKetProgramInvest,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 46,
            margin: EdgeInsets.only(top: 16),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(colorButton),
                ),
                child: Text(textButton),
                onPressed: onPressed),
          )
        ],
      ));
}

Widget wCostumAppBarBack({required String title}) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 1.0,
      )
    ]),
    child: Stack(
      children: <Widget>[
        SvgPicture.asset("images/Back.svg"),
        Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        )
      ],
    ),
  );
}

Widget wImagesDetail({required String imageAsset, required String bagiHasil}) {
  return Stack(
    children: <Widget>[
      Container(
        height: 160,
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Colors.green,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(imageAsset))),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
        child: Text(
          'Bagi Hasil ' + bagiHasil + ' Bulan',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
        ),
      )
    ],
  );
}

class Required {}
