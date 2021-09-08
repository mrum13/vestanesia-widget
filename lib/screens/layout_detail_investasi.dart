import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
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

  Widget _sectionSatu({
    required String judul,
    required String lokasi,
    required String periode,
    required String presentase,
    required String jangkaWaktu,
    required String perusahaanRekan,
    required String jumlahUnit,
    required String jumlahPetani,
  }) {
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
                child: SvgPicture.asset("images/maps.svg"),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Periode Imbal',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Presentase Imbal',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Per ' + periode + ' Bulan',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF168039),
                      borderRadius: BorderRadius.circular(4)),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Text(
                    presentase + ' %',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (Text(
                      'Jangka Waktu',
                      style: TextStyle(color: Colors.grey),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        jangkaWaktu,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (Text(
                      'Perusahaan Rekanan',
                      style: TextStyle(color: Colors.grey),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        perusahaanRekan,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Jumlah Unit',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Jumlah Petani',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  jumlahUnit + ' unit',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  jumlahPetani + ' orang',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionDua(
      {required String jumlahInvest,
      required String totalImbal,
      required String totalPengembalian}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                border: Border.all(color: Color(0xFF168039))),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Investasiku',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Total Imbal',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Rp. ' + jumlahInvest,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Rp. ' + totalImbal,
                        style: TextStyle(color: Color(0xFF168039)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                border: Border.all(color: Color(0xFF168039))),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (Text(
                            'Total Pengembalian Investasi',
                            style: TextStyle(color: Colors.grey),
                          )),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Rp. ' + totalPengembalian,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sectionTiga() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                'Progress',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(margin: EdgeInsets.only(top: 20), child: _timeLineTile())
        ],
      ),
    );
  }

  Widget _timeLineTile() {
    return Container(
      child: Column(
        children: <Widget>[
          TimelineTile(
            isFirst: true,
            endChild: Container(
                margin: EdgeInsets.only(left: 16, ),
                child: Text(
                  'Pengumpulan Dana',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF168039)),
                )),
            indicatorStyle: IndicatorStyle(width: 13, color: Color(0xFF168039)),
            afterLineStyle: LineStyle(
              color: Color(0xFF168039),
              thickness: 1,
            ),
          ),
          TimelineTile(
            endChild: Container(
                margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                child: Column(
                  children: [
                    Text('Pembelian bibit pisang cavendish oleh tim vestanesia',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF168039))
                    ),
                    Row(
                      children: [
                        Image.asset("images/bibit1.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Image.asset("images/bibit2.png"),)
                      ],
                    )
                  ],
                )),
            indicatorStyle: IndicatorStyle(width: 13, color: Color(0xFF168039)),
            beforeLineStyle: LineStyle(
              color: Color(0xFF168039),
              thickness: 1,
            ),
          ),
          TimelineTile(
            endChild: Container(
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  'Penanaman bibit oleh petani rekanan vestanesia',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            indicatorStyle: IndicatorStyle(width: 13, color: Colors.grey,),
            beforeLineStyle: LineStyle(
              color: Color(0xFF168039),
              thickness: 1,
            ),
          ),
          TimelineTile(
            endChild: Container(
                margin: EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  'Progress pertumbuhan bulan ke 3',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            indicatorStyle: IndicatorStyle(width: 13, color: Colors.grey,),
            beforeLineStyle: LineStyle(
              color: Color(0xFF168039),
              thickness: 1,
            ),
          )
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
                  'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan',
              periode: '12',
              presentase: '27',
              jangkaWaktu: '12 Bulan (October 2020 - October 2021)',
              jumlahPetani: '10',
              jumlahUnit: '200',
              perusahaanRekan: 'Kelompok tani di kota Baubau'),
          _sectionDua(
              jumlahInvest: '10.000.000',
              totalImbal: '2.700.000',
              totalPengembalian: '12.700.000'),
          _sectionTiga()
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
