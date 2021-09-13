import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_transfer_bank.dart';
import 'package:vestanesia_widgets/screens/layout_detail_investasi.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DetailPembayaran2 extends StatefulWidget {
  const DetailPembayaran2({Key? key}) : super(key: key);

  @override
  _DetailPembayaran2State createState() => _DetailPembayaran2State();
}

class _DetailPembayaran2State extends State<DetailPembayaran2> {
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
        '2/2',
        style: TextStyle(color: Color(0xFF494949), fontSize: 12),
      ),
    );
  }

  Widget _isiKonten() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Halo, Rahmat Hamid !',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Text(
                          'Terima kasih sudah melakukan investasi \ndi Vestanesia. Silahkan melakukan transfer ke \nnomor rekening yang tertera dibawah \nuntuk menyelesaikan pembayaran investasi anda.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ],
                  ),
                )
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
                  'Daftar Rekening',
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
              children: [
                RichText(
                  text: TextSpan(
                      text:
                          'Untuk menyelesaikan pesanan, silahkan lakukan \npembayaran di ATM atau melalui Internet Banking \nsebelum ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '16 Feb 2020 07:49',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DataProgram().bankData.length,
                itemBuilder: (BuildContext context, int index) {
                  ModelBank bank = DataProgram().bankData[index];
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              width: 105,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Bank',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 11),
                                    child: Image.asset(bank.bank),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'No. Rekening',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 13),
                                          child: Text(
                                            bank.rek,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top:13),
                                          child: Text('Copy', style: TextStyle(fontSize: 14,color: Color(0xFF168039)),))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Divider(height: 1,))
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

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
                        _isiKonten(),
                      ],
                    ))),
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
                        onPressed: () => wPushReplaceTo(context, DetailInvestasi()),
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
