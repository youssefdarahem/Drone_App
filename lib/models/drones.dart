class Drone {
  final int? id;
  final String? name;
  final String? status; //TODO: make a Status class

  const Drone({this.id,this.name,this.status});
  
}

const List<Drone> DronesDummyData = [
  Drone(id: 1, name: "drone 1", status: "station"),
  Drone(id: 2, name: "drone 2", status: "flying"),
  Drone(id: 3, name: "drone 3", status: "charging"),
  Drone(id: 4, name: "drone 4", status: "station"),
  Drone(id: 5, name: "drone 5", status: "flying"),
  Drone(id: 6, name: "drone 6", status: "station"),
  Drone(id: 7, name: "drone 7", status: "flying"),
  Drone(id: 8, name: "drone 8", status: "station"),
];
