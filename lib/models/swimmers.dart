import 'package:drone_for_beaches/models/location.dart';

class Swimmer {
  final int id;
  final String? name;
  final String? timeOfRegestration;
  Location? currLocation;

  Swimmer({required this.id, this.name, this.timeOfRegestration,this.currLocation});

  void updateSwimmerLocation(Location newLoc) {
    this.currLocation = newLoc;
  }
}


