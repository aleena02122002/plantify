import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:plantify/screens/home.dart';
import 'package:plantify/screens/signip.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Image(
                    image: AssetImage('images/Logo.png'),
                    fit: BoxFit.contain,
                    width: 200,
                    height: 200)),
          ),
          const Text(
            "Login",
            style: TextStyle(
                color: Color(0xFF0D986A),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          textField('Email', emailController, _focusNode1,
              const Icon(Icons.email_rounded)),
          const SizedBox(
            height: 10,
          ),
          textField('Password', passwordController, _focusNode2,
              const Icon(Icons.lock)),
           Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => SignUpView()));
                },
                child: Text(
                  "Don't Have an Account yet?",
                  style: TextStyle(
                      color: Color(0xFF0D986A),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D986A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)))),
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
              borderSide: BorderSide(color: Color(0xFF004A61))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xFFB65FCF), width: 2.0))),
    ),
  );
}
