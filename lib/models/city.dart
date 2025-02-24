import 'package:atelier1/models/place.dart';

class City {
  final String postCode;
  final String country;
  final String countryAbbreviation;
  final List<Place> places;

  City({
    required this.postCode,
    required this.country,
    required this.countryAbbreviation,
    required this.places,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    var placesFromJson = json['places'] as List;
    List<Place> placeList = placesFromJson.map((place) => Place.fromJson(place)).toList();

    return City(
      postCode: json['post code'],
      country: json['country'],
      countryAbbreviation: json['country abbreviation'],
      places: placeList,
    );
  }
}
