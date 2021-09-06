import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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

///button hijau
Widget wButtonSubmitGreen(
    {required BuildContext context,
    required String title,
    required Function() onPressed}) {
  return Container(
      width: double.infinity,
      height: 46,
      margin: EdgeInsets.only(top: 20),
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

Widget wCardVestanesia({required String imageAsset}) {
  return Card(
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
                  'Bagi Hasil 12 Bulan',
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
            padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Column(
              children: <Widget>[
                Text(
                  'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
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
                        'Per 12 Bulan',
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF168039),
                            borderRadius: BorderRadius.circular(4)),
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Text(
                          '27%',
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
                        'Rp 800 Juta',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        'Rp 1 Miliyar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: new LinearPercentIndicator(
                    lineHeight: 20.0,
                    percent: 0.9,
                    progressColor: Colors.blue[400],
                    backgroundColor: Colors.grey[300],
                  ),
                )
              ],
            ),
          )
        ],
      ));
}
