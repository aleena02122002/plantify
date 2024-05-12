import 'package:flutter/material.dart';
import 'package:plantify/screens/login.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>  LoginView(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration:  const BoxDecoration(
                      color: Color(0xFF0D986A),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70))
                  ),
                  child: Center(child: Image.asset('images/plant.png', scale: 0.8, width: 300, height: 340,),),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.66,
                padding: const EdgeInsets.only(top: 40, bottom: 30, left: 20),
                decoration: const BoxDecoration(
                  color:  Colors.white,
                ),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text("GET READY", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Color(0xFF0D986A), ),),
                        Text("BE HIGYENIC", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Color(0xFF0D986A), ),),
                        SizedBox(height: 20,),
                        Text("Stay clean, stay healthy;", style: TextStyle(fontSize: 20, color: Color(0xFF0D986A), ),),
                        Text(" hygiene is your armor", style: TextStyle(fontSize: 20, color: Color(0xFF0D986A), ),)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}