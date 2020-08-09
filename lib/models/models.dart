class Places {
  final String name;
  final String imagePath;

  Places({this.name, this.imagePath});
}

List<Places> places = [
  Places(name: "Mountain", imagePath: 'assets/mountain.jpg'),
  Places(name: "Lake", imagePath: 'assets/lake.jpg'),
  Places(name: "Grass", imagePath: 'assets/grass.jpg'),
  Places(name: "Sea", imagePath: 'assets/sea.jpg'),
];
