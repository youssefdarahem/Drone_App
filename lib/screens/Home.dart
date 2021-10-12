import 'package:drone_for_beaches/provider/ui_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    UiBodyProvider uiBodyProvider = Provider.of<UiBodyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Drones Controll App"),
      ),
      body: uiBodyProvider.body,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: uiBodyProvider.currentIndex,
        onTap: (index) => uiBodyProvider.onTabTapped(index),
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
