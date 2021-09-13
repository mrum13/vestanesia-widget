import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/screens/layout_detail_pembayaran1.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DialogPembayaran extends StatelessWidget {
  DialogPembayaran({Key? key}) : super(key: key);

  Widget _appBarDialog() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8), topLeft: Radius.circular(8)),
              color: Color(0xFF168039).withOpacity(0.1)),
          child: Container(
            margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Row(
              children: <Widget>[
                Align(
                  child: SvgPicture.asset("images/dompet.svg"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Pembiayaan / Investasi',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Color(0xFF168039)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset("images/dialogacc.svg"),
        ))
      ],
    );
  }

  Widget _contentDialog({required Function() onPressed}) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            model.judul,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
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
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
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
                        color: Color(0xFFF25656), fontWeight: FontWeight.w400),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: Text(
                    model.sisaUnit + ' Unit Tersisa',
                    style: TextStyle(
                        color: Color(0xFF000000), fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Jumlah Pendanaan',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  'Rp ' + '100.000',
                  style: TextStyle(fontSize: 14, color: Colors.black),
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
                  'Imbal ' + model.presentase.toString() + '%',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  'Rp ' + model.presentase.toString() + '.000',
                  style: TextStyle(fontSize: 14, color: Colors.black),
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
                  'Pengembalian Investasi',
                  style: TextStyle(fontSize: 14, color: Color(0xFF168039)),
                ),
                Text(
                  'Rp ' + (model.presentase * 100000).toString(),
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF168039),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Pilih Jumlah Unit',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text(
                              '@ Unit = Rp ' + '100.000',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFEBEFF4),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        child: SvgPicture.asset("images/min.svg"),
                      ),
                      Text('1'),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: SvgPicture.asset("images/plus.svg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 44,
                margin: EdgeInsets.symmetric(vertical: 16),
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
                    onPressed: onPressed,
                    child: Text('Proses Pembayaran'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF168039))),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  ModelProgram model = DataProgram().cardData[0];
  // String imbal = model.presentase;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 16, right: 16),
      child: Container(
        height: 548,
        child: Column(
          children: <Widget>[_appBarDialog(), _contentDialog(onPressed: () => wPushReplaceTo(context, DetailPembayaran1()))],
        ),
      ),
    );
  }
}
