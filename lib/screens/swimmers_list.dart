import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:drone_for_beaches/provider/swimmer_provider.dart';
import 'package:drone_for_beaches/widgets/add_swimmer.dart';
import 'package:drone_for_beaches/widgets/swimmer_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwimmersList extends StatefulWidget {
  @override
  _SwimmersListState createState() => _SwimmersListState();
}

class _SwimmersListState extends State<SwimmersList> {
  void startAddNewTask(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return AddSwimmer();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ListView.builder(
          itemCount:
              Provider.of<SwimmersProvider>(context).SwimmersDummyData.length,
          itemBuilder: (context, index) => _mapToSwimmerList(
              Provider.of<SwimmersProvider>(context).SwimmersDummyData,
              context)[index],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              startAddNewTask(context);
            },
          ),
        ),
      ],
    );
  }

  List<Widget> _mapToSwimmerList(List<Swimmer> swimmers, BuildContext context) {
    return swimmers.map((swimmer) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SwimmerTile(
              swimmer: swimmer,
              onDelete: removeSwimmer,
            ),
            Divider(),
          ],
        ),
      );
    }).toList();
  }

  void removeSwimmer(Swimmer swimmer) {
    //Todo: call api to remove from database
    Provider.of<SwimmersProvider>(context,listen: false).removeSwimmer(swimmer);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${swimmer.name} removed'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
