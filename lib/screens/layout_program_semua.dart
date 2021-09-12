import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

import 'layout_detail_program.dart';

class ProgramSemua extends StatefulWidget {
  const ProgramSemua({ Key? key }) : super(key: key);

  @override
  _ProgramSemuaState createState() => _ProgramSemuaState();
}

class _ProgramSemuaState extends State<ProgramSemua> {

  var judulIsi;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}