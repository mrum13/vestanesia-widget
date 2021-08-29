import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:vestanesia_widgets/screens/layout_dashboard.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class LengkapiData2 extends StatefulWidget {
  const LengkapiData2({Key? key}) : super(key: key);

  @override
  _LengkapiData2State createState() => _LengkapiData2State();
}

class _LengkapiData2State extends State<LengkapiData2> {
  bool checkedValue = false;

  Widget _header1() {
    return wTextReguler(
        text: 'Upload Berkas',
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(0));
  }

  Widget _helperHeader() {
    return wTextHelperLengkapiData(
        textHelper: 'Langkah 2/2', alignment: Alignment.topRight);
  }

  Widget _helperButtonFotoKTP() {
    return wHelperInputText(
        textEx: 'Foto KTP', marginEx: EdgeInsets.only(top: 16));
  }

  Widget _buttonFotoKTP() {
    return wUploadButton(text: 'foto e-KTP');
  }

  Widget _helperButtonFotoSelfiKTP() {
    return wHelperInputText(
        textEx: 'Upload Foto Selfie Dengan KTP',
        marginEx: EdgeInsets.only(top: 16));
  }

  Widget _buttonFotoSelfieKTP() {
    return wUploadButton(text: 'foto selfi dengan e-KTP');
  }

  Widget _checkBox() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 7),
          child: Stack(
            children: [
              Checkbox(
                value: checkedValue,
                activeColor: Color(0xFFFFFFFF),
                checkColor: Color(0xFF168039),
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 4, left: 36),
                child: Text(
                  'Saya menyatakan bahwa data yang telah \ntercantum diatas adalah benar dan saya telah \nmelakukan pengecekan serta dalam kondisi \nkeadaan sadar.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return wDividerGaris(margin: EdgeInsets.only(top: 20));
  }

  Widget _setujuSyarat(){
    return Container(
      padding: EdgeInsets.only(top: 11, bottom: 11, left: 15),
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF168039)),
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFE8F2EB),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RoundCheckBox(
            size: 24,
            checkedColor: Color(0xFF168039),
            onTap: (selected){}
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text('Saya setuju dengan syarat dan ketentuan',
            style: TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.w400, 
              color: Color(0xFF168039),
              decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonSelesai(){
    return wButtonSubmitGreen(
      context: context, 
      title: 'Selesai', 
      onPressed: () => wPushReplaceTo(context, Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Lengkapi Data',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 2,
          shadowColor: Colors.grey,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[_header1(), _helperHeader()],
                ),
                Column(
                  children: <Widget>[
                    _helperButtonFotoKTP(),
                    _buttonFotoKTP(),
                    _helperButtonFotoSelfiKTP(),
                    _buttonFotoSelfieKTP(),
                    _divider(),
                    _checkBox(),
                    _setujuSyarat(),
                    _buttonSelesai()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
