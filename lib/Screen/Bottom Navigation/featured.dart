import 'package:flutter/material.dart';

class Featured extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Featured_State();
  }

}

class Featured_State extends State<Featured>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Featured"),
      ),
    );
  }

}