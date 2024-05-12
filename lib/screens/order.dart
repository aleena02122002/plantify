import 'package:flutter/material.dart';
import 'package:plantify/screens/homeview.dart';

class OrderRecieved extends StatefulWidget {
  const OrderRecieved({super.key});

  @override
  State<OrderRecieved> createState() => _OrderRecievedState();
}

class _OrderRecievedState extends State<OrderRecieved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "ORDER RECIEVED",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF0D986A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("OrderID#7476823168927", style: TextStyle(fontSize: 5),),
                  const SizedBox(height: 80,),
                  Image.asset('images/plant.png', width: 150, height: 170,),
                  ElevatedButton(onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor:const Color(0xFF0D986A), foregroundColor: Colors.white,  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: const Size(250, 50)
                    ),
                    child: const Text('ORDER PLACED'), ),
                ]
            )
        )
    );
  }
}