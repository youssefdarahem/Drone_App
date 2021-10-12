import 'package:drone_for_beaches/models/drones.dart';
import 'package:drone_for_beaches/models/swimmers.dart';



class DroneNotification {
  int? id;
  DateTime? time;
  Swimmer? swimmer;
  Drone? drone;

  DroneNotification({this.id, this.drone, this.swimmer, this.time});
}

