import 'package:drone_for_beaches/widgets/drones_widget.dart';
import 'package:drone_for_beaches/widgets/main_map.dart';
import 'package:drone_for_beaches/widgets/swimmers_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List _body = [
    MainMap(),
    SwimmersWidget(),
    DronesWidget(),
    Text("notifi"),
  ];
  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Drones Controll App"),
      ),
      body: _body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              height: 35,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/swimmer.png',
              height: 35,
            ),
            label: "people",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/drone.png',
              height: 35,
            ),
            label: "drones",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/notification.png',
              height: 35,
            ),
            label: "notifications",
          ),
        ],
      ),
    );
  }
}
