import 'package:flightapp/Screen/Authentication/registrationscreen.dart';
import 'package:flightapp/Theams/Widget/imagewidget.dart';
import 'package:flightapp/Values/color.dart';
import 'package:flightapp/Values/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'Authentication/loginscreen.dart';

class Introduction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Intro_State();
  }
}

class Intro_State extends State<Introduction> {
  final introKey = GlobalKey<IntroductionScreenState>();

  ///  IntroEnd is a method which Navigate to the LoginScreen Screen
  ///  by clicking Done if user is signed in else navigate back to LoginScreen
  // this statement works only after using Shared preference

  void IntroEnd(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        pages: [
          /// pages which gives the space to add the components within PageViewM
          /// PageViewModel wellcome to navana air
          PageViewModel(
            title: Strings.title_1,
            bodyWidget: Column(
              children: [
                Text(
                  Strings.page_view_model_1,
                  style: GoogleFonts.baloo(
                      fontSize: 20, color: Colorvalue.intro_text_color),
                ),
              ],
            ),
            image: ImageWidget(img: "intro1.png"),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),

          /// PageViewModel Flying community
          PageViewModel(
            title: Strings.title_2,
            //  Text(Strings.title2),
            bodyWidget: Column(
              children: [
                Text(
                  Strings.page_view_model_2,
                  style: GoogleFonts.baloo(
                      fontSize: 20, color: Colorvalue.intro_text_color),
                ),
              ],
            ),
            image: ImageWidget(img: "intro2.jpg"),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),

          /// PageViewModel Book your ticket
          PageViewModel(
            title: Strings.title_3,
            bodyWidget: Column(
              children: [
                Text(
                  Strings.page_view_model_3,
                  style: GoogleFonts.baloo(
                      fontSize: 20, color: Colorvalue.intro_text_color),
                ),
              ],
            ),
            image: ImageWidget(img: "intro3.png"),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),

          /// PageViewModel Family security
          PageViewModel(
            title: Strings.title_4,
            bodyWidget: Column(
              children: [
                Text(
                  Strings.page_view_model_4,
                  style: GoogleFonts.baloo(
                      fontSize: 20, color: Colorvalue.intro_text_color),
                ),
              ],
            ),
            image: ImageWidget(img: "intro4.jpg"),
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
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
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
