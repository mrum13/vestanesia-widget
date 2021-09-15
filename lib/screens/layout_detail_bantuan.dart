import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class DetailBantuan extends StatefulWidget {
  const DetailBantuan({Key? key}) : super(key: key);

  @override
  _DetailBantuanState createState() => _DetailBantuanState();
}

class _DetailBantuanState extends State<DetailBantuan> {
  Widget _costumAppbar() {
    return wCostumAppBarBack(title: 'Apa itu Vestanesia ?');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SafeArea(child: _costumAppbar()),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Vestanesia adalah sebuah perusahaan finansial berbasis digital yang fokus pada usaha pertanian, peternakan, perikanan dan industry olahannya. Anda dapat bermitra dengan para petani terbaik melalui penyertaan modal pada kegiatan budidaya pertanian dengan manfaat bagi hasil yang menguntungkan. Misi utama kami untuk memberikan akses keuangan alternatif kepada petani, peternak dan nelayan Indonesia yang berada jauh di pelosok desa sehingga mereka dapat mengembangkan usaha menjadi lebih baik.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Masih memerlukan Bantuan ?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 46,
                          margin: EdgeInsets.only(top: 16),
                          child: ElevatedButton.icon(

                              icon: Icon(
                                MdiIcons.whatsapp,
                                size: 32,
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(
                                    width: 1,
                                    color: Color(0xFF168039),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF168039)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              label: Text(
                                'Hubungi CS Vestanesia',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {}),
                        ),
                      ),
                    ],
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
