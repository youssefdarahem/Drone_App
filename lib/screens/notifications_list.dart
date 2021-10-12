import 'package:drone_for_beaches/models/location.dart';
import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:drone_for_beaches/models/drones.dart';
import 'package:drone_for_beaches/models/notification.dart';

import 'package:flutter/material.dart';

class NotificationsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<DroneNotification> notificationDummeyData = [
      DroneNotification(
          id: 1,
          time: DateTime.now(),
          swimmer: Swimmer(
              id: 2,
              name: "swimmmer 2",
              timeOfRegestration: "12:35",
              currLocation: Location(40.97752563904677, 28.596014560828326)),
          drone: Drone(id: 3, name: "drone 3", status: "charging")),
      DroneNotification(
          id: 2,
          time: DateTime.now(),
          swimmer: Swimmer(
              id: 3,
              name: "swimmmer 3",
              timeOfRegestration: "13:10",
              currLocation: Location(40.97752563904666, 28.596014560828330)),
          drone: Drone(id: 5, name: "drone 5", status: "flying")),
    ];
    return ListView.builder(
      itemCount: notificationDummeyData.length,
      itemBuilder: (context, index) {
         return _mapToListTiles(notificationDummeyData)[index];
      },
    );
  }

  List<Widget> _mapToListTiles(List<DroneNotification> notifications) {
    return notifications
        .map((item) => ListTile(
              leading: CircleAvatar(
                child: Text(item.id.toString()),
              ),
              title: Text(
                  '${item.swimmer!.name!} is in danger at location ${item.swimmer!.currLocation}'),
              subtitle: Text(
                  'Drone num: ${item.drone!.id} is assigned to the rescue'),
            ))
        .toList();
  }
}
