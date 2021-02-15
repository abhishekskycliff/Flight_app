import 'package:flightapp/Screen/Authentication/loginscreen.dart';
import 'package:flightapp/Screen/Authentication/registrationscreen.dart';
import 'package:flightapp/Screen/Bottom%20Navigation/featured.dart';
import 'package:flightapp/Screen/Bottom%20Navigation/home_screen.dart';
import 'package:flightapp/Screen/Bottom%20Navigation/places.dart';
import 'package:flightapp/Screen/Bottom%20Navigation/user_account.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigationBarScreen> {

  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _widgetOptions = [
    HomeScreen(),
    Places(),
    Featured(),
    UserAccount(),
  ];




  void _onpagechanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedindex) {
    print(selectedindex);
    _pageController.jumpToPage(selectedindex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget.getAppBar('world'),
      body: PageView(
        controller: _pageController,
        children: _widgetOptions,
        onPageChanged: _onpagechanged,
        physics: NeverScrollableScrollPhysics(),
        // onPageChanged:  ,
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        onTap: _onItemTapped,
        selectedItemColor: Colors.indigo,
        currentIndex: _selectedIndex,
        // backgroundColor: Colors.indigo,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
         //   backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt_sharp),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}

// color: Colors.indigo,