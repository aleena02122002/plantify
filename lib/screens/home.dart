import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
}
final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomeViewState extends State<HomeView> {
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
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),
          // IconButton(onPressed: ()=> _key.currentState!.openDrawer(), icon: Icon(Icons.drag_handle_outlined)),
        ],
      ),
    );
  }
}
Widget _drawer(BuildContext context){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(child: Align(alignment: Alignment.topRight,child: Icon(Icons.cancel_outlined,color: Colors.black26,)),
        decoration: BoxDecoration(color: Color(0xFF0D986A)),
        ),
        ListTile(
          title: Image(image: AssetImage('images/shop.png'),width: 30,height: 30,fit: BoxFit.contain,),
        )
      ],
    ),
  );
}