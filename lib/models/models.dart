class Places {
  final String name;
  final String imagePath;
  final String distance;

  Places({this.name, this.imagePath, this.distance});
}

List<Places> places = [
  Places(
      name: "  Mountain", imagePath: 'assets/mountain.jpg', distance: '5 km'),
  Places(name: "  Lake", imagePath: 'assets/lake.jpg', distance: '  3 km'),
  Places(name: "  Grass", imagePath: 'assets/grass.jpg', distance: '  10 km'),
  Places(name: " Sea", imagePath: 'assets/sea.jpg', distance: '  20 km'),
];
