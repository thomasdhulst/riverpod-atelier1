import 'package:dio/dio.dart';

callApi({required String postalCode}) async =>
    await Dio().get('https://api.zippopotam.us/fr/$postalCode');

// TODO: Create a provider here (family ? statenotifier ? futureprovider ?)
