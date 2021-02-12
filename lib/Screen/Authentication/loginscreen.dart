import 'dart:ui';

import 'package:flightapp/Screen/Authentication/registrationscreen.dart';
import 'package:flightapp/Screen/Home/homescreen.dart';
import 'package:flightapp/Screen/introduction.dart';
import 'package:flightapp/Theams/Widget/Button.dart';
import 'package:flightapp/Theams/Widget/widgetimages.dart';
import 'package:flightapp/Theams/appbar.dart';
import 'package:flightapp/Values/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Login_State();
  }
}

class Login_State extends State<LoginScreen> {
  bool _passwordvisible;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordvisible = false;
  }

  /// method to validate the password
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else
        return null;
    }
  }

  /// method to validate the email
  String validateEmail(String value) {
    Pattern pattern = r'^(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);

    if (value.isEmpty) {
      return 'Please enter Email';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid Email';
      else
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Appbarwidget.getAppBar("login"),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Create account Text
                Container(
                  child: Text(
                    Strings.sign_in_account,
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colorvalue.create_account_color),
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.19,
                  margin: const EdgeInsets.only(top: 30, right: 100),
                  // color: Colors.yellow,
                ),

                /// Text Email
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

                /// Email validation TextField
                Container(
                  child: TextFormField(
                    validator: validateEmail,
                    //    controller: controller_email,
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
                  child: ListTile(
                    title: Text(
                      Strings.password,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14),
                ),

                /// option to hide and make visible the password using TextFormField
                Container(
                  child: TextFormField(
                    validator: validatePassword,
                    //   controller: controller_password,
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordvisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      // Here is key idea
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordvisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordvisible = !_passwordvisible;
                          });
                        },
                      ),
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                ),

                /// custom Sign up Button coming from Button.dart
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 60,
                          width: 300,
                          // color: Colors.yellow,
                          child: CustomRiasedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              }
                            },
                            text: (Strings.sign_in),
                          ),
                        ),
                      ),

                      Column(children: <Widget>[
                        Row(children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 50, right: 20.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                          Text("OR"),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 20.0, right: 50),
                                child: Divider(
                                  color: Colors.black,
                                  height: 50,
                                )),
                          ),
                        ]),
                      ]),
                      /// google and facebook floating action button
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(-0.3,0),
                              child: FloatingActionButton(
                              //  onPressed: make_call,
                                heroTag: "btn1",
                                child: Image.network('https://ai.devoteam.com/wp-content/uploads/sites/91/2018/05/google-logo-icon-png-transparent-background.png',width: 35,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.3,0),
                              child: FloatingActionButton(
                                //onPressed: send_email,
                                child: Image.network('https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512',width: 40,),
                                backgroundColor: Colorvalue.facebook_color,
                              ),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(bottom: 20),
                      ),
                    ],
                  ),
                ),

                /// Text sign in to navigate to next Screen
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.not_have_account,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              Strings.sign_up,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => RegistrationScreen()),
                              );
                            },
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
                        //    margin: const EdgeInsets.only(top: 10),
                      ),
                    ],
                  ),
                  //1margin: const EdgeInsets.only(top: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
