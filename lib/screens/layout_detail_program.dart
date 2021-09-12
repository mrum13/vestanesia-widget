import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_gambar_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/screens/layout_dialog_pembayaran.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DetailProgram extends StatefulWidget {
  const DetailProgram({Key? key}) : super(key: key);

  @override
  _DetailProgramState createState() => _DetailProgramState();
}

class _DetailProgramState extends State<DetailProgram> {
  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1.0,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[_backButton(), _textAppbar(), _iconShare()],
      ),
    );
  }

  Widget _backButton() {
    return Align(
      child: SvgPicture.asset("images/Back.svg"),
    );
  }

  Widget _textAppbar() {
    return Text(
      'Detail Program',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }

  Widget _iconShare() {
    return Align(
      child: SvgPicture.asset("images/Share.svg"),
    );
  }

  ModelProgram model = DataProgram().cardData[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SafeArea(child: _costumAppbar()),
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: Expanded(
                    child: Container(
                  child: ListView(
                    children: <Widget>[
                      ///RecyclerView Images
                      Container(
                        height: 192,
                        width: double.infinity,
                        color: Colors.lightBlue,
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              model.judul,
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                        model.lokasi,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Per ' + model.periode + ' Bulan',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF168039),
                                        borderRadius: BorderRadius.circular(4)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 4),
                                    child: Text(
                                      model.presentase.toString() + ' %',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Berikut rincian, waktu dan proyeksi laporan keuangan telah dirangkum dalam file prospektus.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFF168039)),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF168039)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, bottom: 40),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Deskripsi Program',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Text(
                                      model.deskripsi,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
            Container(
              
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Visibility(
                      visible: true,
                      child: new LinearPercentIndicator(
                        lineHeight: 4.0,
                        percent: model.percentProgress,
                        progressColor: Colors.orange,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total Investasi',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Target Dana',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Rp ' + model.investasi,
                          style: TextStyle(color: Colors.orange),
                        ),
                        Text(
                          'Rp ' + model.dana,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Visibility(
                          visible: true,
                          child: Text(
                            'Sisa ' + model.sisaHari + ' Hari Lagi',
                            style: TextStyle(
                                color: Color(0xFFF25656),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Visibility(
                          visible: true,
                          child: Text(
                            model.sisaUnit + ' Unit Tersisa',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: wButtonSubmitGreen(
                        title: model.textButton,
                        onPressed: () {
                          showDialog(context: context, builder: (context){
                            return DialogPembayaran();
                          });
                        },
                        marginTop: EdgeInsets.only(top: 10)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
