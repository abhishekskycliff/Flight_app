import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CircularCard extends StatelessWidget{
  final IconData icon;
  final String text,cardcolor;
  CircularCard({ this.icon, this.text, this.cardcolor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: Card(
            color: HexColor(cardcolor),
            child: Icon(icon,color: Colors.white,size: 30,),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          width: 80,
          height: 80,
        //  color: Colors.amberAccent,
          margin: const EdgeInsets.all(10),
        ),
        Text(text,style: TextStyle(
          fontSize: 16,
        ),),
      ],
    );
  }

}