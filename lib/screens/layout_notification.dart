import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_notifikasi.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';

class NotificationLayout extends StatefulWidget {
  const NotificationLayout({ Key? key }) : super(key: key);

  @override
  _NotificationLayoutState createState() => _NotificationLayoutState();
}

class _NotificationLayoutState extends State<NotificationLayout> {

  String gambar = "images/pembayaran.svg";

  Widget _costumAppbar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          wLogoOnlyVestanesia(marginTop: EdgeInsets.all(0)),
          _textAppbar(),
          _iconChat()
        ],
      ),
    );
  }

  Widget _iconChat() {
    return Align(
      child: SvgPicture.asset("images/Chat.svg"),
    );
  }

  Widget _textAppbar() {
    return Text(
      'Notifikasi',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }


  Widget _notificationContent() {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context, 
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: DataProgram().notifikasiData.length,
          itemBuilder: (context, index) {
            ModelNotifikasi listNotifikasi = DataProgram().notifikasiData[index];
            if (listNotifikasi.judul == "Pembayaran"){
              gambar = "images/pembayaran.svg";
            }
            else if (listNotifikasi.judul == "Program Baru") {
              gambar = "images/programbaru.svg";
            }
            else if (listNotifikasi.judul == "Investasi") {
              gambar = "images/investasi.svg";
            }
            else {
              
            }
            return Container(
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 16),
                    child: SvgPicture.asset(gambar, width: 32, height: 32,),
                  ),
                  MediaQuery.removePadding(
                    removeLeft: true,
                    context: context, 
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(  
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(listNotifikasi.judul, style: TextStyle(
                                  color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6),
                                  child:  Text(listNotifikasi.isi, style: TextStyle(
                                  color: Colors.black, fontSize: 12
                                  ),
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(listNotifikasi.tanggal, style: TextStyle(
                                  color: Colors.black, fontSize: 12
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 9),
                                  child: SvgPicture.asset("images/notifball.svg"))
                              ],
                            ),
                          )
                        ],
                      )
                    ))
                ],
              ),
            );
          },
        )),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SafeArea(child: _costumAppbar()),
          _notificationContent()
        ],
      ),  
    );
  }
}