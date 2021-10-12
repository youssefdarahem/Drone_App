
import 'package:drone_for_beaches/screens/drone_map.dart';
import 'package:drone_for_beaches/screens/drones_widget.dart';
import 'package:drone_for_beaches/screens/main_map.dart';
import 'package:drone_for_beaches/screens/notification_details.dart';
import 'package:drone_for_beaches/screens/notifications_list.dart';
import 'package:drone_for_beaches/screens/swimmer_map.dart';
import 'package:drone_for_beaches/screens/swimmers_list.dart';
import 'package:flutter/material.dart';


class UiBodyProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex {
    return _currentIndex;
  }

  final List _bodylist = [
    MainMap(),
    SwimmersList(),
    DronesList(),
    NotificationsList(),
  ];

  Widget body = MainMap();

  void onTabTapped(int index) {
    _currentIndex = index;
    body = _bodylist[_currentIndex];
    notifyListeners();
  }

  void onSwimmerTap(int id) {
    body = SwimmerMap(id: id);
    notifyListeners();
  }

  void onDroneTap() {
    body = DroneMap();
    notifyListeners();
  }

  void onNotificationTap() {
    body = NotificationDetails();
    notifyListeners();
  }
}
