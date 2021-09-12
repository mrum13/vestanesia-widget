import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/screens/layout_detail_program.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ProgramTersedia extends StatefulWidget {
  const ProgramTersedia({ Key? key }) : super(key: key);

  @override
  _ProgramTersediaState createState() => _ProgramTersediaState();
}

class _ProgramTersediaState extends State<ProgramTersedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: DataProgram().cardData.length,
              itemBuilder: (BuildContext context, int index) {
                ModelProgram modelCard = DataProgram().cardData[index];
                if (modelCard.textButton == "Mulai Investasi") {
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
                  return SizedBox();
                }
              }),
    );
  }
}