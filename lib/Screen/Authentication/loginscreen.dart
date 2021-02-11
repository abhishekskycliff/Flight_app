import 'package:flightapp/Screen/introduction.dart';
import 'package:flightapp/Theams/Widget/Button.dart';
import 'package:flightapp/Theams/appbar.dart';
import 'package:flightapp/Values/color.dart';
import 'package:flutter/cupertino.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    Strings.create_account,
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colorvalue.create_account_color),
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.15,
                  margin: const EdgeInsets.only(top: 30, right: 100),
                  // color: Colors.yellow,
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      Strings.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: "Name",
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      Strings.email,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.pink,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: Strings.email,
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: Strings.password,
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                        height: 60,
                        width: 300,
                        // color: Colors.yellow,
                        child: CustomRiasedButton(
                          onPressed: () {
                            Introduction();
                          },
                          text: (Strings.sign_up),
                        )),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.have_account,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            Strings.sign_in,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          Strings.skip,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        margin: const EdgeInsets.only(top: 20),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 100),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
