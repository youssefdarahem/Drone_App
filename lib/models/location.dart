class Location {
  double longitude;
  double latitude;
  Location(this.latitude, this.longitude);

  @override
  String toString() {
    return '(${this.latitude}, ${this.longitude})';
  }
}
