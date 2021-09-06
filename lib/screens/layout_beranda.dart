import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/screens/layout_program_semua.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class BerandaLayout extends StatelessWidget {
  const BerandaLayout({Key? key}) : super(key: key);

  Widget _iconChat() {
    return Align(
      child: SvgPicture.asset("images/Chat.svg"),
    );
  }

  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wLogoVestanesia(marginTop: EdgeInsets.all(0)),
          _iconChat()
        ],
      ),
    );
  }

  Widget _cardMulai() {
    return wCardVestanesia(
        imageAsset: "images/pisang1.png",
        bagiHasil: '12',
        judulCard:
            'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
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

  Widget _cardSegera() {
    return wCardVestanesia(
        imageAsset: "images/pisang1.png",
        bagiHasil: '12',
        judulCard:
            'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
        periode: '12',
        presentase: '27',
        investasi: '-',
        dana: '1 Milyar',
        sisaHari: '-',
        sisaUnit: '-',
        colorButton: Color(0xFF9FACA3),
        diBuka: '2',
        ketSatu: false,
        ketDua: true,
        ketTiga: false,
        textButton: 'Segera dimulai',
        percentProgress: 0.01,
        visibleProgress: true);
  }

  Widget _cardSelesai() {
    return wCardVestanesia(
        imageAsset: "images/pisang1.png",
        bagiHasil: '12',
        judulCard:
            'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
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
        Container(
          color: Color(0xFFE5E5E5),
          child: Column(children: <Widget>[
            _costumAppbar(),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  _cardMulai(),
                  SizedBox(height: 10),
                  _cardSegera(),
                  SizedBox(height: 10),
                  _cardSelesai()
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
