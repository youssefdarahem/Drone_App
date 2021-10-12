import 'package:drone_for_beaches/Models/drones.dart';
import 'package:flutter/material.dart';

class DronesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Drone> DronesDummyData = [
      Drone(id: 1, name: "drone 1", status: "station"),
      Drone(id: 2, name: "drone 2", status: "flying"),
      Drone(id: 3, name: "drone 3", status: "charging"),
      Drone(id: 4, name: "drone 4", status: "station"),
      Drone(id: 5, name: "drone 5", status: "flying"),
      Drone(id: 6, name: "drone 6", status: "station"),
      Drone(id: 7, name: "drone 7", status: "flying"),
      Drone(id: 8, name: "drone 8", status: "station"),
    ];

    return ListView(
      children: DronesDummyData.map((drone) {
        return ListTile(
          title: Text(drone.name!),
          subtitle: Text("Status: ${drone.status!}"),
        );
      }).toList(),
    );
  }
}
