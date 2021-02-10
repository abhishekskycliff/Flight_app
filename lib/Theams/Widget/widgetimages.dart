import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetimage{

  static getwidget(String assetimage){
    return Align(
      child: Image.asset('asset/$assetimage.png', width: 350.0,),
      alignment: Alignment.bottomCenter,
    );
  }


}