class Place {
  final String placeName;
  final String longitude;
  final String state;
  final String stateAbbreviation;
  final String latitude;

  Place({
    required this.placeName,
    required this.longitude,
    required this.state,
    required this.stateAbbreviation,
    required this.latitude,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      placeName: json['place name'],
      longitude: json['longitude'],
      state: json['state'],
      stateAbbreviation: json['state abbreviation'],
      latitude: json['latitude'],
    );
  }
}
