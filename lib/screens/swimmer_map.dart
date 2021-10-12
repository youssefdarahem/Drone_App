import 'package:drone_for_beaches/models/swimmers.dart';
import 'package:drone_for_beaches/provider/swimmer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

class SwimmerMap extends StatelessWidget {
  final int id;
  SwimmerMap({required this.id});

  @override
  Widget build(BuildContext context) {
    Swimmer swimmer = Provider.of<SwimmersProvider>(context).getSwimmer(id);
    return Column(
      children: [
        Expanded(
          child: FlutterMap(
            options: MapOptions(
              center: LatLng(40.977029834790294, 28.59672437433544),
              zoom: 16.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
                attributionBuilder: (_) {
                  return Text("© OpenStreetMap contributors");
                },
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(40.97755893795787, 28.596276383738658),
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Info',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text('Swimmer name: ${swimmer.name}'),
                  SizedBox(height: 5),
                  Text('Time of redestration: ${swimmer.timeOfRegestration}'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
