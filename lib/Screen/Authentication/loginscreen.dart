import 'package:flightapp/Theams/appbar.dart';
import 'package:flightapp/Values/color.dart';
import 'package:flutter/material.dart';
import 'package:flightapp/Values/string.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Login_State();
  }
}

class Login_State extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: Appbarwidget.getAppBar("login"),
        body: ListView(
      children: [
        Container(
          child: Text(
            Strings.create_account,
            style: GoogleFonts.baloo(
                fontSize: 40, color: Colorvalue.create_account_color),
          ),
          width: MediaQuery.of(context).size.width*0.2,
          height: MediaQuery.of(context).size.height*0.2,
          color: Colors.amber,
        ),
      ],
    ));
  }
}
