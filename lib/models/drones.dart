import 'package:drone_for_beaches/models/location.dart';

class Drone {
  final int? id;
  final String? name;
  //tOdO: make a Status class
  final String? status;
  Location? currentLoc;

  Drone({this.id, this.name, this.status, this.currentLoc});

  void updateDroneLocation(Location newLoc) {
    this.currentLoc = newLoc;
  }
}

