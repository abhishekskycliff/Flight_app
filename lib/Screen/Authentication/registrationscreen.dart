import 'package:flightapp/Screen/Home/homescreen.dart';
import 'package:flightapp/Screen/introduction.dart';
import 'package:flightapp/Theams/Widget/Button.dart';
import 'package:flightapp/Theams/appbar.dart';
import 'package:flightapp/Values/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flightapp/Values/string.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginscreen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Registration_State();
  }
}

class Registration_State extends State<RegistrationScreen> {
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
                    Strings.create_account,
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

                /// Text Name
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
                  // color: Colors.blueAccent,
                ),

                /// TextField for Name
                Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: "Name",
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  //color: Colors.deepOrangeAccent,
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
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                ),

                /// custom Sign up Button coming from Button.dart
                Container(
                  child: Padding(
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
                          text: (Strings.sign_up),
                        )),
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
                            Strings.have_account,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              Strings.sign_in,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
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
                  margin: const EdgeInsets.only(top: 80),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
