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
     // appBar: Appbarwidget.getAppBar('world'),
      body: PageView(
        controller: _pageController,
        children: _widgetOptions,
        onPageChanged: _onpagechanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pinkAccent,
        currentIndex: _selectedIndex,
     //   backgroundColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Home',

            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Places',
            // title: Text('hello',style: TextStyle(
            //   color: _selectedIndex == 0? Colors.blue:Colors.grey,
            // ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list_outlined),
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