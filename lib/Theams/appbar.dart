import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Appbarwidget {
  static getAppBar(String title){
    return AppBar(
      title: Text(title),
      backgroundColor: HexColor("#1f1f98"),
    );
  }
}