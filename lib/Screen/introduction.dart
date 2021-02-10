import 'package:flightapp/Screen/HomeScreen.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Intro_State();
  }
}

class Intro_State extends State<Introduction> {
  final introKey = GlobalKey<IntroductionScreenState>();

  ///  IntroEnd is a method which Navigate to the Next Screen
  void IntroEnd(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Container(
        child: Image.asset(
          'asset/images/$assetName',
          width: 358.0,
          height: 600,
        ),
        margin: const EdgeInsets.only(top: 150,bottom: 10),
        color: Colors.amber,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        pages: [
          PageViewModel(
            title: "hello i am title",
            bodyWidget: Column(
              children: [
                Text(
                  Strings.pageviwmodel1,
                  style: GoogleFonts.baloo(
                      fontSize: 30, color: HexColor("#1f1f98")),
                ),
              ],
            ),
            image: _buildImage('intro1.png'),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title: "",
            bodyWidget: Column(
              children: [
                Text(
                  Strings.pageviwmodel1,
                  style: GoogleFonts.baloo(
                      fontSize: 30, color: HexColor("#1f1f98")),
                ),
              ],
            ),
            image: _buildImage('intro2.jpg'),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title: "",
            bodyWidget: Column(
              children: [
                Text(
                  Strings.pageviwmodel1,
                  style: GoogleFonts.baloo(
                      fontSize: 30, color: HexColor("#1f1f98")),
                ),
              ],
            ),
            image: _buildImage('intro3.gif'),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title: "",
            bodyWidget: Column(
              children: [
                Text(
                  Strings.pageviwmodel1,
                  style: GoogleFonts.baloo(
                      fontSize: 30, color: HexColor("#1f1f98")),
                ),
              ],
            ),
            image: _buildImage('intro1'),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
        ],
        onDone: () => IntroEnd(context),
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: const Text('Skip intro'),
        next: const Icon(Icons.arrow_forward),
        done: const FlatButton(
          child: Text('Done'),
          color: Colors.blueAccent,
        ),
        //Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(20.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(200.0)),
          ),
        ),
      ),
    );
  }
}
