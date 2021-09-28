import 'package:flutter/material.dart';
import 'package:vestanesia_widgets/screens/layout_login.dart';
import 'package:vestanesia_widgets/widgets/widgets.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _emailRegis = TextEditingController();
  TextEditingController _passwordRegis = TextEditingController();
  bool _obscureText = true;

  Widget _logoRegist(){
    return wLogoVestanesia(
      marginTop: EdgeInsets.only(top: 43));
  }

  Widget _regisSubtitle(){
    return wAuthSubtitle(
      subtitle: 'Daftar akun dan mulai maskimalkan \ninvestasimu dengan Vestanesia.', 
      edgeInsets: EdgeInsets.only(top: 32));
  }

  Widget _helperEmail(){
    return wHelperInputText(
      textEx: 'Email',
      marginEx: EdgeInsets.only(top: 40)
    );
  }

  Widget _inputEmailRegis(){
    return wInputText(
      hintText: 'Masukkan Email', 
      contVar: _emailRegis,
    );
  }

  Widget _helperPass(){
    return wHelperInputText(
      textEx: 'Password',
      marginEx: EdgeInsets.only(top: 20));
  }

  Widget _inputPassRegis(){
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 6),
          child: TextFormField(
            controller: _passwordRegis,
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

  Widget _buttonRegis(){
    return wButtonSubmitGreen(
      title: 'Daftar Akun', 
      onPressed: (){
        
      }, marginTop: EdgeInsets.only(top: 20)
    );
  }

  Widget _dividerRegis(){
    return wDivider(
      textDivider: 'Atau daftar dengan',
      marginDivider: EdgeInsets.only(top: 20));
  }

  Widget _googlefbRegis(){
    return wGoogleFBSignIn(onPressed: (){});
  }

  Widget _loginText(){
    return wTextLink(
      text: 'Sudah punya akun?',
      title: 'Login di sini',
      onTap: () => wPushReplaceTo(context, LoginLayout())
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
              _logoRegist(),
              _regisSubtitle(),
              _helperEmail(),
              _inputEmailRegis(),
              _helperPass(),
              _inputPassRegis(),
              _buttonRegis(),
              _dividerRegis(),
              _googlefbRegis(),
              _loginText(),
            ],
          ),
        ),
      ),
    );
  }
}