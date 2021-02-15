import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserAccount_State();
  }

}

class UserAccount_State extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("My account"),
      ),
    );
  }

}