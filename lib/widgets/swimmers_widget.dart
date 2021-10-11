import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:flutter/material.dart';

class SwimmersWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: SwimmersDummyData.map((swimmer) => _mapToSwimmerList(swimmer))
          .toList(),
    );
  }

  Widget _mapToSwimmerList(Swimmer swimmer) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(swimmer.id.toString()),
      ),
      title: Text(swimmer.name!),
      subtitle: Text(swimmer.timeOfRegestration!),
    );
  }
}
