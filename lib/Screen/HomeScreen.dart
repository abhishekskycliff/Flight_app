import 'package:flightapp/Theams/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Home_state();
  }

}

class Home_state extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget.getAppBar('world'),
    );
  }

}