import 'package:drone_for_beaches/models/drones.dart';
import 'package:drone_for_beaches/models/swimmers.dart';



class Notification {
  int? id;
  DateTime? time;
  Swimmer? swimmer;
  Drone? drone;

  Notification({this.id, this.drone, this.swimmer, this.time});
}

List<Notification> notificationDummeyData = [
  Notification(
      id: 1,
      time: DateTime.now(),
      swimmer: Swimmer(id: 2, name: "swimmmer 2", timeOfRegestration: "12:35"),
      drone: Drone(id: 3, name: "drone 3", status: "charging")),
  Notification(
      id: 2,
      time: DateTime.now(),
      swimmer: Swimmer(id: 3, name: "swimmmer 3", timeOfRegestration: "13:10"),
      drone: Drone(id: 5, name: "drone 5", status: "flying")),
];
