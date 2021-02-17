import 'package:flightapp/Theams/Widget/circularcard.dart';
import 'package:flightapp/Theams/Widget/popularplaces.dart';
import 'package:flightapp/Theams/Widget/rectungularcard.dart';
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
            child: Text(
              Strings.home,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            margin: const EdgeInsets.only(left: 20),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircularCard(
                    icon: Icons.flight_outlined,
                    text: Strings.flight,
                    cardcolor: '#f5586d'),
                CircularCard(
                    icon: Icons.home_work_sharp,
                    text: Strings.hotel,
                    cardcolor: '#57cf25'),
                CircularCard(
                    icon: Icons.car_rental,
                    text: Strings.car,
                    cardcolor: '#6f4ee8'),
                CircularCard(
                    icon: Icons.restaurant_menu,
                    text: Strings.resturant,
                    cardcolor: '#e150e3'),
                CircularCard(
                    icon: Icons.train,
                    text: Strings.train,
                    cardcolor: '#50e3d4'),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.18,
            // color: Colors.indigo,
            margin: const EdgeInsets.only(top: 15),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            //  color: Colors.blue,
            child: Text(
              Strings.offer,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: const EdgeInsets.only(left: 15,bottom: 10),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  //    color: Colors.blue,
                  child: Text(
                    Strings.recommended,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // color: Colors.blue,
                  child: Text(
                    Strings.all,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 15),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RectangularCard(
                  city_image: Strings.thailand_image,
                  country: Strings.thailand,
                  city: Strings.bangkok,
                ),
                RectangularCard(
                  city_image: Strings.france_image,
                  country: Strings.france,
                  city: Strings.paris,
                ),
                RectangularCard(
                  city_image: Strings.India_image,
                  country: Strings.india,
                  city: Strings.delhi,
                ),
                RectangularCard(
                  city_image: Strings.uae_image,
                  country: Strings.uae,
                  city: Strings.dubai,
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            // color: Colors.indigo,
            margin: const EdgeInsets.only(top: 15),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  //    color: Colors.blue,
                  child: Text(
                    Strings.popular_places,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                 //  color: Colors.blue,
                  child: Text(
                    Strings.all,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 15,top: 15),
          ),

          Popularplaces(
            city_image: Strings.france_image,
            country: Strings.france,
            city: Strings.paris,
          ),
          Popularplaces(
            city_image: Strings.India_image,
            country: Strings.india,
            city: Strings.delhi,
          ),
          Popularplaces(
            city_image: Strings.uae_image,
            country: Strings.uae,
            city: Strings.dubai,
          ),
        ],
      ),
    );
  }
}
