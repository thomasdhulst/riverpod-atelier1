import 'package:atelier1/models/city.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_provider.g.dart';

callApi({required String postalCode}) async =>
    await Dio().get('https://api.zippopotam.us/fr/$postalCode');

@riverpod
Future<City> city(Ref ref, String postalCode) async {
  final response = await callApi(postalCode: postalCode);
  return City.fromJson(response.data);
}
