import 'package:flutter/material.dart';

class CityFinderScreen extends StatelessWidget {
  const CityFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('City Finder')),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Postal Code',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_on),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Put your logic here
              },
              icon: Icon(Icons.search),
              label: Text('Find City'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            // TODO: Add FoundCityCard here or ErrorWidget
          ],
        ),
      ),
    );
  }
}
