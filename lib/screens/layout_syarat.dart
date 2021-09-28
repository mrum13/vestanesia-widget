import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vestanesia_widgets/data/data_program.dart';
import 'package:vestanesia_widgets/models/model_syarat.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class SyaratLayout extends StatelessWidget {
  const SyaratLayout({Key? key}) : super(key: key);

  Widget _costumAppbar() {
    return wCostumAppBarBack(title: 'Bantuan');
  }

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
                padding: EdgeInsets.all(16),
                color: Colors.amber,
                child: ListView.builder(
                  itemCount: DataProgram().syaratData.length,
                  itemBuilder: (context, index) {
                    ModelSyarat listSyarat = DataProgram().syaratData[index];
                      return Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: SvgPicture.asset("images/notifball.svg")
                              ),
                              MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: Expanded(
                                  child: Container(
                                    child: Text(listSyarat.syarat),
                                  ),
                                ),
                              )
                            ],
                          ),
                      );
                  }
                ),
              )
            ),
          )
        ],
      )),
    );
  }
}
