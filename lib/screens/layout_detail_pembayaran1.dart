import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/screens/layout_detail_pembayaran2.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DetailPembayaran1 extends StatefulWidget {
  const DetailPembayaran1({Key? key}) : super(key: key);

  @override
  _DetailPembayaran1State createState() => _DetailPembayaran1State();
}

class _DetailPembayaran1State extends State<DetailPembayaran1> {
  int group = 1;

  @override
  void initState() {
    super.initState();
    group = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      group = val;
    });
  }

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
        children: <Widget>[_backButton(), _textAppbar(), _ketPage()],
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
      'Pembayaran',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }

  Widget _ketPage() {
    return Align(
      child: Text(
        '1/2',
        style: TextStyle(color: Color(0xFF494949), fontSize: 12),
      ),
    );
  }

  Widget _contentIsi(
      {required Function() onTap, required dynamic onChangedPembayaran}) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  'Program',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 8, top: 4),
                        child: Divider(
                          height: 1,
                        )))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(
              model.judul,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Visibility(
            visible: visibleContainer ? false : true,
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  Container(
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
                          'Per ' + model.periode + ' Bulan',
                          style: TextStyle(color: Colors.black),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF168039),
                              borderRadius: BorderRadius.circular(4)),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 4),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Min. Pendanaan',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Max. Pendanaan',
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
                          'Rp ' + '100.000',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Rp ' + '100.000.000',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
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
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 8, top: 4),
                        child: Divider(
                          height: 1,
                        ))),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    color: Color(0xFFF5F6F8),
                    child: Row(
                      children: [
                        Text(
                          visibleContainer
                              ? 'Lebih Banyak Info'
                              : 'Sembunyikan',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF168039)),
                        ),
                        Icon(
                          visibleContainer
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                          color: Color(0xFF168039),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Ringkasan Biaya',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 8, top: 4),
                        child: Divider(
                          height: 1,
                        )))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nilai Investasi',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Rp. ' + '100.000' + '/Unit',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Jumlah Unit',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '3' + ' Unit',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total',
                  style: TextStyle(color: Color(0xFF168039)),
                ),
                Text(
                  'Rp ' + '300.000',
                  style: TextStyle(
                      color: Color(0xFF168039),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Pilih Metode Pembayaran',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 8, top: 4),
                        child: Divider(
                          height: 1,
                        )))
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                RadioListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(left: 0),
                  title: const Text('Transfer Bank',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  value: 1,
                  activeColor: Color(0xFF168039),
                  subtitle: Text(
                      'BRI, BNI, BNI Syariah, Mandiri, Mandiri Syariah, BCA',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                  onChanged: onChangedPembayaran,
                  groupValue: group,
                ),
                RadioListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(left: 0),
                  title: const Text(
                    'Dompet Virtual',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  value: 2,
                  activeColor: Color(0xFF168039),
                  subtitle: Text('DANA, OVO, LinkAja, GoPay',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                  onChanged: onChangedPembayaran,
                  groupValue: group,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ModelProgram model = DataProgram().cardData[0];
  bool visibleContainer = true;
  String _character = 'Transfer Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: _costumAppbar(),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: [
                    _contentIsi(
                      onTap: () {
                        setState(() {
                          visibleContainer = !visibleContainer;
                        });
                      },
                      onChangedPembayaran: (dynamic value) {
                        print(value);
                        setSelectedRadio(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 44,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xFF168039))),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF168039),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 44,
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ElevatedButton(
                        onPressed: () => wPushTo(context, DetailPembayaran2()),
                        child: Text('Bayar Sekarang'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF168039))),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
