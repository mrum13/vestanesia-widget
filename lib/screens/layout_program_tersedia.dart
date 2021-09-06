import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ProgramTersedia extends StatelessWidget {
  const ProgramTersedia({ Key? key }) : super(key: key);

  Widget _cardMulai1(){
    return wCardVestanesia(
      imageAsset: "images/pisang1.png", 
      bagiHasil: '12',
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      periode: '12',
      presentase: '27',
      investasi: '800',
      dana: '1 Milyar',
      sisaHari: '2',
      sisaUnit: '200',
      colorButton: Color(0xFF168039),
      diBuka: '2',
      ketSatu: true,
      ketDua: false,
      ketTiga: true,
      textButton: 'Mulai Investasi', 
      percentProgress: 0.9,
      visibleProgress: true);
  }

  Widget _cardMulai2(){
    return wCardVestanesia(
      imageAsset: "images/pisang1.png", 
      bagiHasil: '12',
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      periode: '12',
      presentase: '27',
      investasi: '500',
      dana: '1 Milyar',
      sisaHari: '5',
      sisaUnit: '100',
      colorButton: Color(0xFF168039),
      diBuka: '1',
      ketSatu: true,
      ketDua: false,
      ketTiga: true,
      textButton: 'Mulai Investasi', 
      percentProgress: 0.5,
      visibleProgress: true);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _cardMulai1(),
            SizedBox(height: 10,),
            _cardMulai2()
          ],      
        )
      ],
    );
  }
}