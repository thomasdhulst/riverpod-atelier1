import 'package:atelier1/models/city.dart';
import 'package:atelier1/views/widgets/place_card.dart';
import 'package:flutter/material.dart';

class FoundCityCard extends StatelessWidget {
  const FoundCityCard({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City Information',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text('Post Code: ${city.postCode}'),
            Text('Country: ${city.country}'),
            Text('Country Abbreviation: ${city.countryAbbreviation}'),
            SizedBox(height: 8),
            Text('Places:', style: Theme.of(context).textTheme.titleMedium),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children:
                  city.places.map((place) => PlaceCard(place: place)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
