import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class InvestasikuSelesai extends StatefulWidget {
  const InvestasikuSelesai({ Key? key }) : super(key: key);

  @override
  _InvestasikuSelesaiState createState() => _InvestasikuSelesaiState();
}

class _InvestasikuSelesaiState extends State<InvestasikuSelesai> {

Widget _cardInvestasiHalf(){
    return wCardInvestasiku2(
      bagiHasil: '12', 
      judulCard: 'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      investasi: '10.000.000', 
      imbal: '2.700.000', 
      tahapInvest: 'Penanaman bibit oleh petani',
      ketProgramInvest: 'Pengembalian dana investasi + imbal', 
      colorKetProgramInvest: Color(0xFF168039), 
      colorButton: Color(0xFF168039), 
      textButton: 'Lihat Laporan Investasi');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _cardInvestasiHalf(),
            SizedBox(height: 20,),
            _cardInvestasiHalf(),
            SizedBox(height: 20,),
          ],
        )
      ],
    );
  }
}