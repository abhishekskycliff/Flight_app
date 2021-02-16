import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';

class Popularplaces extends StatelessWidget{
  final String country,city,city_image;

  Popularplaces({this.country,this.city,this.city_image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Column(
        children: [
          Container(
            child: Card(
              // color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(city_image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.3,
            // color: Colors.blue,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            //color: Colors.blue,
            child: Text(
              country,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            // color: Colors.blue,
            child: Text(
              city,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      //  color: Colors.amber,
    );
  }

}