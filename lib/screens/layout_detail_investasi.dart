import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DetailInvestasi extends StatefulWidget {
  const DetailInvestasi({Key? key}) : super(key: key);

  @override
  _DetailInvestasiState createState() => _DetailInvestasiState();
}

class _DetailInvestasiState extends State<DetailInvestasi> {
  Widget _costumAppbar() {
    return wCostumAppBarBack(title: 'Detail Investasi');
  }

  Widget _sectionSatu({required String judul, required String lokasi}) {
    return Container(
      child: Column(
        children: [
          Text(
            'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Stack(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (Text(
                    'Lokasi',
                    style: TextStyle(color: Colors.grey),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      lokasi,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset("images/maps.svg"),)
            ]
            ),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          _sectionSatu(
              judul:
                  'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
              lokasi:
                  'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFFF4F7FA),
            child: Column(
              children: <Widget>[_costumAppbar(), _body()],
            ),
          )
        ],
      ),
    );
  }
}
