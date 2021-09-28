import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vestanesia_widgets/screens/layout_bantuan.dart';
import 'package:vestanesia_widgets/screens/layout_investasiku.dart';
import 'package:vestanesia_widgets/screens/layout_syarat.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class LainnyaLayout extends StatefulWidget {
  const LainnyaLayout({Key? key}) : super(key: key);

  @override
  _LainnyaLayoutState createState() => _LainnyaLayoutState();
}

class _LainnyaLayoutState extends State<LainnyaLayout> {
  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 19),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_textAppbar()],
      ),
    );
  }

  Widget _textAppbar() {
    return Text(
      'Lainnya',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }

  Widget _displayPicture() {
    return Container(
      height: 72,
      width: 72,
      decoration:
          BoxDecoration(color: Color(0xFF4593FD), shape: BoxShape.circle),
      child: Stack(children: <Widget>[
        SvgPicture.asset("images/default_dp.svg"),
        Center(
          child: Text(
            'AD',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        )
      ]),
    );
  }

  Widget _nameAndSaldo() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Text(
                        'Alfian Dirham',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 16),
                              child: SvgPicture.asset("images/Wallet.svg")),
                          Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text(
                                'Rp. 1.000.000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 14),
                              ))
                        ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // _btnLihatProfile()
        ],
      ),
    );
  }

  Widget _btnLihatProfile() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFFC4C4C4))
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: Text('Lihat Profile',
        style: TextStyle(
          fontSize: 12, 
          fontWeight: FontWeight.w400),),
    );
  }

  Widget _sectionSatu() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Stack(
        children: <Widget>[
          Row(
          children: <Widget>[
            _displayPicture(),
            _nameAndSaldo()
          ],
          ),
          Container(
            margin: EdgeInsets.only(top: 41),
            alignment: Alignment.bottomRight,
            child: _btnLihatProfile())
        ],
      ),
    );
  }

  Widget _textSectionDuaket({required String isi}){
    return Text(
      isi, 
      style: TextStyle(
        color: Colors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w400
      ),
    );
  }

  Widget _textSectionDuaValue({required String isiValue}){
    return Text(
      isiValue, 
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
    );
  }

  Widget _sectionDua(){
    return Container(
      margin: EdgeInsets.only(top: 8, right: 16, left: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _textSectionDuaket(isi: 'Aktif'),
              _textSectionDuaket(isi: 'Selesai'),
              _textSectionDuaket(isi: 'Total Investasi')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _textSectionDuaValue(isiValue: '6 Program'),
              _textSectionDuaValue(isiValue: '1 Program'),
              _textSectionDuaValue(isiValue: 'Rp. 600.000.000')
            ],)
        ],
      ),
    );
  }

  Widget _buttonSectionTiga({required String isiButton, required dynamic intent, required BuildContext context}){
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFD9E0EC))
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(isiButton,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
              ),
            SvgPicture.asset("images/arrowRight.svg")
            ],
          ),
      ),
      onTap: ()=> wPushTo(context, intent),
    );
  }

  Widget _sectionTiga(){
    return Container(
      margin: EdgeInsets.only(top: 38),
      child: Column(
        children: <Widget>[
          _buttonSectionTiga(isiButton: 'Investasiku', intent: Investasiku(), context: context),
          _buttonSectionTiga(isiButton: 'Bantuan', intent: BantuanLayout(),context: context),
          _buttonSectionTiga(isiButton: 'Syarat & Ketentuan', intent: SyaratLayout(),context: context),
          _buttonSectionTiga(isiButton: 'Kebijakan Privasi', intent: Investasiku(), context: context),
          _buttonSectionTiga(isiButton: 'Rating Playstore', intent: Investasiku(), context: context),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _costumAppbar(),
              Container(
                child: Column(
                  children: <Widget>[
                    _sectionSatu(),
                    _sectionDua(),
                    _sectionTiga()],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
