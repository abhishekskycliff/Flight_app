import 'dart:async';
import 'package:flightapp/Values/color.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'introduction.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreen_State();
  }
}

class SplashScreen_State extends State<SplashScreen> {
  /// Timer within initState to hold the screen for few seconds

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Introduction())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Appbarwidget.getAppBar('world'),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                  //   child:Widgetimage.getwidget(),
                  ),
              Container(
                child: Image.asset(
                  Strings.logo_image,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                margin: const EdgeInsets.only(top: 300),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      Strings.text_navana,
                      style:
                          GoogleFonts.baloo(fontSize: 40, color: Colors.white),
                    ),
                    Text(
                      Strings.text_air,
                      style: GoogleFonts.baloo(
                          fontSize: 40,
                          color: Colorvalue.splashscreen_text_color),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(left: 100),
              ),
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colorvalue.splashscreen_background_color,
      ),
    );
  }
}
