import 'package:atelier1/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.placeName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Place Name: ${place.placeName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('State: ${place.state}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'State Abbreviation: ${place.stateAbbreviation}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('Latitude: ${place.latitude}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Longitude: ${place.longitude}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
