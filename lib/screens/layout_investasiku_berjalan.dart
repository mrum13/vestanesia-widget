import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class InvestasikuBerjalan extends StatelessWidget {
  const InvestasikuBerjalan({ Key? key }) : super(key: key);

  Widget _cardInvestasiSoon(){
    return wCardInvestasiku(
      bagiHasil: '12', 
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)', 
      periode: '12', 
      presentase: '27', 
      investasi: '800', 
      dana: '1 Milyar', 
      sisaHari: '2', 
      sisaUnit: '200', 
      diBuka: '-', 
      ketSatu: true, 
      ketDua: false, 
      ketTiga: true, 
      colorButton: Color(0xFFEE684F), 
      textButton: 'Akan dimulai dalam 2 Hari', 
      percentProgress: 0.8, 
      visibleProgress: true);
  }

  Widget _cardInvestasiHalf(){
    return wCardInvestasiku2(
      bagiHasil: '12', 
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      investasi: '10.000.000', 
      imbal: '2.700.000', 
      tahapInvest: 'Penanaman bibit oleh petani',
      ketProgramInvest: 'Program akan berakhir dalam 365 hari', 
      colorKetProgramInvest: Color(0xFFF2994A), 
      colorButton: Color(0xFF168039), 
      textButton: 'Lihat Progress');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _cardInvestasiHalf(),
            SizedBox(height: 20,),
            _cardInvestasiSoon()
          ],
        )
      ],
    );
  }
}