import 'package:drone_for_beaches/widgets/drones_widget.dart';
import 'package:drone_for_beaches/widgets/swimmers_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List _body = [
    Text("home"),
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
        //backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            label: "people",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.airplanemode_active),
            label: "drones",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.notifications),
            label: "notif",
          ),
        ],
      ),
    );
  }
}
