import 'package:flightapp/Values/color.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Appbarwidget {
  static getAppBar(String title){
    return AppBar(
      title: Text(title),
      backgroundColor: Colorvalue.splashscreen_background_color,
    );
  }
}