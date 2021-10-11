import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:flutter/material.dart';

class SwimmersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ListView(
          children:
              SwimmersDummyData.map((swimmer) => _mapToSwimmerList(swimmer))
                  .toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _mapToSwimmerList(Swimmer swimmer) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            key: ValueKey(swimmer.id.toString()),
            leading: CircleAvatar(
              child: Text(swimmer.id.toString()),
            ),
            title: Text(swimmer.name!),
            subtitle: Text(swimmer.timeOfRegestration!),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                print('delete');
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
