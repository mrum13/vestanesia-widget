import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ProgramSelesai extends StatelessWidget {
  const ProgramSelesai({ Key? key }) : super(key: key);

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
                } else {
                  return SizedBox();
                }
              }),
    );
  }
}