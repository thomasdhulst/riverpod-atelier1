import 'package:atelier1/views/city_finder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zippopotam.us City Finder',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CityFinderScreen(),
    );
  }
}
