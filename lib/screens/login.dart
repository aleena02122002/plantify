import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Image( image: AssetImage('images/Logo.png'),width: 20,height: 20,fit: BoxFit.cover),
              )
            ],
          )),
    );
  }
}
