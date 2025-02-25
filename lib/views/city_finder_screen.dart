import 'package:atelier1/logic/city_provider.dart';
import 'package:atelier1/models/place.dart';
import 'package:atelier1/views/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CityFinderScreen extends HookConsumerWidget {
  const CityFinderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    // ref.listen(cityNotifierProvider, (prev, next) {
    //   if (prev?.isLoading ?? false) {
    //     if (next.hasError) {
    //       showErrorDialog(context);
    //     } else if (next.hasValue) {
    //       navigateToDetail(context, next.value!.places.first);
    //     }
    //   }
    // });

    ref
      ..listen(cityNotifierProvider.select((state) => state.error), (
        prev,
        next,
      ) {
        if (next != null) {
          showErrorDialog(context);
        }
      })
      ..listen(cityNotifierProvider.select((state) => state.value), (
        prev,
        next,
      ) {
        if (next != null) {
          navigateToDetail(context, next.places.first);
        }
      });

    return Scaffold(
      appBar: AppBar(title: Text('City Finder')),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
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
                ref
                    .read(cityNotifierProvider.notifier)
                    .fetchCity(textController.text);
              },
              icon: Icon(Icons.search),
              label: Text('Find City'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Future<Object?> navigateToDetail(BuildContext context, Place place) =>
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PlaceDetailScreen(place: place),
        ),
      );

  void showErrorDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('An error occurred. Please try again.'),
        action: SnackBarAction(label: 'OK', onPressed: () {}),
      ),
    );
  }
}
