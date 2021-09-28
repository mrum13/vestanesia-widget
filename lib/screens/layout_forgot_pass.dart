import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/screens/layout_login.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({ Key? key }) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  TextEditingController _emailForgotPass = TextEditingController();

  Widget _logoForgetPass(){
    return wLogoVestanesia(
      marginTop: EdgeInsets.only(top: 43));
  }

  Widget _forgotPassTitle(){
    return wAuthTitle(
      title: 'Lupa Kata Sandi'
    );
  }

  Widget _forgotPassSubtitle(){
    return wAuthSubtitle(
      subtitle: 'Anda dapat menyetel ulang melalui email. \nPastikan akun email anda dapat diakses.',
      edgeInsets: EdgeInsets.only(top: 50));
  }

  Widget _helperEmail(){
    return wHelperInputText(
      textEx: 'Email',
      marginEx: EdgeInsets.only(top: 40)
    );
  }

  Widget _inputEmailForgotPass(){
    return wInputText(
      hintText: 'Masukkan Email', 
      contVar: _emailForgotPass,
    );
  }

  Widget _buttonForgotKirim(){
    return wButtonSubmitGreen(
      title: 'Kirim', 
      onPressed: () => wPushReplaceTo(context, LoginLayout()), marginTop: EdgeInsets.only(top: 20)
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              _logoForgetPass(),
              _forgotPassTitle(),
              _forgotPassSubtitle(),
              _helperEmail(),
              _inputEmailForgotPass(),
              _buttonForgotKirim(),
            ],
          ),
        ),
      ),
    );
  }
}