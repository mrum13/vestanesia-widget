import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/screens/layout_program_semua.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

import 'layout_detail_program.dart';

class BerandaLayout extends StatefulWidget {
  const BerandaLayout({Key? key}) : super(key: key);

  @override
  _BerandaLayoutState createState() => _BerandaLayoutState();
}

class _BerandaLayoutState extends State<BerandaLayout> {
  Widget _iconChat() {
    return Align(
      child: SvgPicture.asset("images/Chat.svg"),
    );
  }

  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1.0,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wLogoVestanesia(marginTop: EdgeInsets.all(0)),
          _iconChat()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SafeArea(
          child: _costumAppbar(),
        ),
        Expanded(
          
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: DataProgram().cardData.length,
              itemBuilder: (BuildContext context, int index) {
                ModelProgram modelCard = DataProgram().cardData[index];
                if (modelCard.textButton == "Selesai") {
                  return wCardProgram(
                      imageAsset: modelCard.images[0],
                      bagiHasil: modelCard.bagiHasil,
                      judulCard: modelCard.judul,
                      periode: modelCard.periode,
                      presentase: modelCard.presentase.toString(),
                      investasi: modelCard.dana,
                      dana: modelCard.danaTekumpul,
                      sisaHari: modelCard.sisaHari,
                      sisaUnit: modelCard.sisaUnit,
                      colorButton: Color(0xFF9FACA3),
                      diBuka: modelCard.dibuka,
                      ketSatu: false,
                      ketDua: false,
                      ketTiga: false,
                      textButton: modelCard.textButton,
                      percentProgress: modelCard.percentProgress,
                      visibleProgress: false,
                      onPressed: () {}, 
                      txtKanan: 'Dana Terkumpul', 
                      txtKiri: 'Target Dana', 
                      colorValTxtKiri: Colors.black);
                } else if (modelCard.textButton == "Segera dimulai") {
                  return wCardProgram(
                      imageAsset: modelCard.images[0],
                      bagiHasil: modelCard.bagiHasil,
                      judulCard: modelCard.judul,
                      periode: modelCard.periode,
                      presentase: modelCard.presentase.toString(),
                      investasi: modelCard.investasi,
                      dana: modelCard.dana,
                      sisaHari: modelCard.sisaHari,
                      sisaUnit: modelCard.sisaUnit,
                      colorButton: Color(0xFF9FACA3),
                      diBuka: modelCard.dibuka,
                      ketSatu: false,
                      ketDua: true,
                      ketTiga: false,
                      textButton: modelCard.textButton,
                      percentProgress: modelCard.percentProgress,
                      visibleProgress: true,
                      onPressed: () {}, 
                      txtKanan: 'Target Dana', 
                      txtKiri: 'Total Investasi', 
                      colorValTxtKiri: Colors.orange);
                } else if (modelCard.textButton == "Mulai Investasi") {
                  return wCardProgram(
                      imageAsset: modelCard.images[0],
                      bagiHasil: modelCard.bagiHasil,
                      judulCard: modelCard.judul,
                      periode: modelCard.periode,
                      presentase: modelCard.presentase.toString(),
                      investasi: modelCard.investasi,
                      dana: modelCard.dana,
                      sisaHari: modelCard.sisaHari,
                      sisaUnit: modelCard.sisaUnit,
                      colorButton: Color(0xFF168039),
                      diBuka: modelCard.dibuka,
                      ketSatu: true,
                      ketDua: false,
                      ketTiga: true,
                      textButton: modelCard.textButton,
                      percentProgress: modelCard.percentProgress,
                      visibleProgress: true,
                      onPressed: () => wPushTo(context, DetailProgram()), 
                      txtKanan: 'Target Dana', 
                      txtKiri: 'Total Investasi', 
                      colorValTxtKiri: Colors.orange);
                } else {
                  return Card(
                    child: Center(child: Text('Data tidak ada')),
                  );
                }
              }),
        ),
      ],
    ));
  }
}

