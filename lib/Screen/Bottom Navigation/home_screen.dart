import 'package:flightapp/Theams/Widget/circularcard.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_state();
  }
}

class Home_state extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: Appbarwidget.getAppBar(Strings.home_appbar_text),
      body: ListView(
        children: [
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircularCard(icon: Icons.flight_outlined,text: Strings.flight,),
                CircularCard(icon: Icons.home_work_sharp,text: Strings.hotel,),
                CircularCard(icon: Icons.car_rental,text: Strings.car,),
                CircularCard(icon: Icons.restaurant_menu,text: Strings.resturant,),
                CircularCard(icon: Icons.train,text: Strings.train,),
              ],
            ),
            height: 130,
           // color: Colors.indigo,
            margin: const EdgeInsets.only(top: 15),
          ),
        ],
      ),
    );
  }
}
