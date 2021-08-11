import 'package:examumar/uipage/bottomPages/homePage.dart';
import 'package:examumar/uipage/bottomPages/profilePage.dart';
import 'package:examumar/uipage/bottomPages/searchPage.dart';
import 'package:examumar/uipage/bottomPages/cardPage.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key,  this.callback}) : super(key: key);
  final callback;
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  List<Widget> appbars = [];

  Widget buildPages() {
    switch (index) {
      case 1:
        return SerachPage();
      case 2:
        return Orders();
      case 3:
        return ProfilePage(callback: widget.callback,);
      case 0:
      default:
        return HomePage();
    }
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
        showSelectedLabels: false,
        elevation: 0.0,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        unselectedItemColor: Colors.grey.shade800,
        selectedItemColor: Colors.white,
        currentIndex: index,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "Order", icon: Icon(Icons.wallet_giftcard)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person))
        ]);
  }
}
