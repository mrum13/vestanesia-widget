import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/screens/layout_forgot_pass.dart';
import 'package:vestanesia_widgets/screens/layout_lengkapi_data1.dart';
import 'package:vestanesia_widgets/screens/layout_regis.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';
import 'package:vestanesia_widgets/widgets/widgets_auth.dart';


class LoginLayout extends StatefulWidget {
  const LoginLayout({ Key? key }) : super(key: key);

  @override
  LoginLayoutState createState() => LoginLayoutState();
}

class LoginLayoutState extends State<LoginLayout> {
  TextEditingController _emailLogin = TextEditingController();
  TextEditingController _passwordLogin = TextEditingController();
  bool _obscureText = true;

  Widget _logoLogin(){
    return wLogoVestanesia(
      marginTop: EdgeInsets.only(top: 43));
  }

  Widget _authSubtitle(){
    return wAuthSubtitle(
      subtitle: 'Silahkan masuk akun untuk mengetahui \nperkembangan investasi kamu.', 
      edgeInsets: EdgeInsets.only(top: 32));
  }

  Widget _helperEmail(){
    return wHelperInputText(
      textEx: 'Email',
      marginEx: EdgeInsets.only(top: 40)
    );
  }

  Widget _inputEmailLogin(){
    return wInputText(
      hintText: 'Masukkan Email', 
      contVar: _emailLogin,
    );
  }

  Widget _helperPass(){
    return wHelperInputText(
      textEx: 'Password',
      marginEx: EdgeInsets.only(top: 20));
  }

  Widget _inputPassLogin(){
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 6),
          child: TextFormField(
            controller: _passwordLogin,
            obscureText: _obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              fillColor: Color(0xFFF5F6F8), filled: true,
              hintText: 'Masukkan Password',
              hintStyle: TextStyle(color: Color(0xFF848484)),
              contentPadding: EdgeInsets.only(left: 16,right: 16)
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 6),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },  
            ),
          ),
        )
      ],
    );
  }

  Widget _textForgotPass(){
    return wForgotPass(
      textForgotPass: 'Lupa password?',
      onTap: () => wPushTo(context, ForgotPass()));
  }

  Widget _buttonLogin(){
    return wButtonSubmitGreen(
      title: 'Masuk Akun', 
      onPressed: () => wPushTo(context, LengkapiData1()), marginTop: EdgeInsets.only(top: 20)
    );
  }

  Widget _dividerLogin(){
    return wDivider(
      textDivider: 'Atau masuk akun dengan',
      marginDivider: EdgeInsets.only(top: 20));
  }

  Widget _googlefbSignIn(){
    return wGoogleFBSignIn(onPressed: (){});
  }

  Widget _regisText(){
    return wTextLink(
      text: 'Belum punya akun?',
      title: 'Daftar di sini',
      onTap: () => wPushReplaceTo(context, Register())
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              _logoLogin(),
              _authSubtitle(),
              _helperEmail(),
              _inputEmailLogin(),
              _helperPass(),
              _inputPassLogin(),
              _textForgotPass(),
              _buttonLogin(),
              _dividerLogin(),
              _googlefbSignIn(),
              _regisText(),
            ],
          ),
        ),
      ),
    );
  }
}
