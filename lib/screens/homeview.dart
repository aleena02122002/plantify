import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plantify/screens/order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        drawer: _drawer(context),
        appBar: AppBar(
          title: Container(
              height: 100,
              width: 100,
              child: Image.asset('images/Logo.png',fit: BoxFit.contain)),
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OrderRecieved()));}, icon: Icon(Icons.notification_add)),
            // IconButton(onPressed: ()=> _key.currentState!.openDrawer(), icon: Icon(Icons.drag_handle_outlined)),
          ],
        ),
        body: SafeArea(
          child:
          SingleChildScrollView(
              child:
              Column(
                children: [
                  Container(
                    child: Align(alignment: Alignment.center, child: Image.asset('images/Group 73.png'),
                    ),
                  ),
                  const     SizedBox(height: 10,),
                  const  SearchBar(),
                  const     SizedBox(height: 10,),
                  SizedBox(
                    child: Align(alignment: Alignment.center, child: Image.asset('images/Frame 95.png'),),
                  ),
                  const SizedBox(height: 15,),
                  InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Image.asset('images/Group 62.png'),
                          Positioned(  right: 30, top: 20, child: Image.asset('images/1plant.png'),)
                        ],
                      )
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Image.asset('images/Group 63.png'),
                          Positioned(  right: 30, top: 20, child: Image.asset('images/sage.png'),)
                        ],
                      )
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Image.asset('images/Group 81.png'),
                        ],
                      )
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Image.asset('images/Group 64.png'),
                          Positioned(  right: 30, top: 20, child: Image.asset('images/2plant.png'),)
                        ],
                      )
                  ),
                ],
              )
          ),
        )
    );
  }
}

Widget _drawer(BuildContext context){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(child: Align(alignment: Alignment.topRight,child: Icon(Icons.cancel_outlined,color: Colors.black26,)),
          decoration: BoxDecoration(color: Color(0xFF0D986A)),
        ),
         Column(
            children: [
              ListTile(
                title: Text("Shop",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text("Plant Care",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text("Community",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text("My Account",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text("Track Order",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                      labelText: "Enter your Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Color(0xFF0D986A))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Color(0xFF0D986A), width: 2.0))),
                ),
              ),
              Center(
                child: ListTile(
                  title: Text("FAQ",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold)),
                ),
              ),
              Center(
                child: ListTile(
                  title: Text("Contact Us",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
                ),
              ),
              Center(
                child: ListTile(
                  title: Text("About Us",style: TextStyle(color: Color(0xFF0D986A),fontWeight: FontWeight.bold),),
                ),
              ),
            ],

        )
      ],
    ),
  );
}