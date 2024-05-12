import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Image( image: AssetImage('images/Logo.png'),fit: BoxFit.contain,width: 100,alignment: Alignment.centerRight,),
              ),
              SizedBox(height: 20),
              Text("Login",style: TextStyle(color: Color(0xFF0D986A),fontSize: 30),),

              textField('Email', emailController, _focusNode1, Icon(Icons.email_rounded)),
              textField('Password', passwordController, _focusNode2, Icon(Icons.lock)),
            ],
          )),
    );
  }
}

Padding textField(String hinttext, TextEditingController _controller,
    FocusNode _focusNode, Icon icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: TextField(
      controller: _controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
          labelText: hinttext,
          prefixIcon: icon,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xFFAF69EF))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xFFB65FCF), width: 2.0))),
    ),
  );
}
