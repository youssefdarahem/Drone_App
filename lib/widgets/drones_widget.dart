import 'package:drone_for_beaches/Models/drones.dart';
import 'package:flutter/material.dart';

class DronesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
