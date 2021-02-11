import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetimage extends StatelessWidget {
  //String assetName;
  final String img;
  final String Text_field;

  Widgetimage({String this.img, this.Text_field});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Image.asset(
        'asset/images/$img',
        width: 358.0,
        height: MediaQuery.of(context).size.width,
      ),
      // margin: const EdgeInsets.only(bottom: 15),
    );
  }

}
