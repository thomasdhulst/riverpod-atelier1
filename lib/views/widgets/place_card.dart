import 'package:atelier1/models/place.dart';
import 'package:atelier1/views/place_detail_screen.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => PlaceDetailScreen(place: place),
        //   ),
        // );
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(place.placeName),
        ),
      ),
    );
  }
}
