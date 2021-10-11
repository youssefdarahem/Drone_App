class Swimmer {
  final int id;
  final String? name;
  final String? timeOfRegestration;

  const Swimmer({required this.id, this.name, this.timeOfRegestration});
}

 const List<Swimmer> SwimmersDummyData = [
  Swimmer(id: 1, name: "swimmmer 1", timeOfRegestration: "10:25"),
  Swimmer(id: 2, name: "swimmmer 2", timeOfRegestration: "12:35"),
  Swimmer(id: 3, name: "swimmmer 3", timeOfRegestration: "13:10"),
  Swimmer(id: 4, name: "swimmmer 4", timeOfRegestration: "09:00"),
  Swimmer(id: 5, name: "swimmmer 5", timeOfRegestration: "08:25"),
  Swimmer(id: 6, name: "swimmmer 6", timeOfRegestration: "15:20"),
  Swimmer(id: 7, name: "swimmmer 7", timeOfRegestration: "13:00"),
  Swimmer(id: 8, name: "swimmmer 8", timeOfRegestration: "20:13"),
];
