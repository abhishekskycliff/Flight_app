import 'package:flightapp/Theams/appbar.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Appbarwidget.getAppBar('world'),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'asset/images/applogo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                margin: const EdgeInsets.only(top: 300),
              ),
              Container(
                  child: Row(
                    children: [
                      Text(
                        Strings.text,
                        style: GoogleFonts.baloo(fontSize: 40,color: HexColor("#ffffff")),
                      ),
                      Text(
                        Strings.textair,
                        style: GoogleFonts.baloo(fontSize: 40,color: HexColor("#ff70a2")),
                      ),
                    ],
                  ),
                margin: const EdgeInsets.only(left:100),
              )
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: HexColor("#1f1f98"),
      ),
    );
  }
}
