import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:drone_for_beaches/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwimmerTile extends StatelessWidget {
  final Swimmer swimmer;
  final Function onDelete;
  const SwimmerTile({Key? key, required this.swimmer, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    UiBodyProvider uiBodyProvider = Provider.of(context);
    return InkWell(
      onTap: () {
        uiBodyProvider.onSwimmerTap(swimmer.id);
      },
      child: Dismissible(
        background: Container(
          color: Colors.red,
        ),
        key: ValueKey(swimmer.id.toString()),
        direction: DismissDirection.horizontal,
        onDismissed: (direction) {
          onDelete(swimmer);
        },
        child: ListTile(
          leading: CircleAvatar(
            child: Text(swimmer.id.toString()),
          ),
          title: Text(swimmer.name!),
          subtitle: Text(swimmer.timeOfRegestration!),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () => onDelete(swimmer),
          ),
        ),
      ),
    );
  }
}
