import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ProgramSelesai extends StatelessWidget {
  const ProgramSelesai({ Key? key }) : super(key: key);

  Widget _cardSelesai(){
    return wCardVestanesia(
      imageAsset: "images/pisang1.png", 
      bagiHasil: '12',
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      periode: '12',
      presentase: '27',
      investasi: '-',
      dana: '1 Milyar',
      sisaHari: '-',
      sisaUnit: '-',
      colorButton: Color(0xFF9FACA3),
      diBuka: '-',
      ketSatu: false,
      ketDua: false,
      ketTiga: false,
      textButton: 'Selesai', 
      percentProgress: 0,
      visibleProgress: false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _cardSelesai()
          ],      
        )
      ],
    );
  }
}