import 'package:atelier1/models/city.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_provider.g.dart';

callApi({required String postalCode}) async =>
    await Dio().get('https://api.zippopotam.us/fr/$postalCode');

@riverpod
class CityNotifier extends _$CityNotifier {
  @override
  FutureOr<City?> build() => null;

  Future<void> fetchCity(String postalCode) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await callApi(postalCode: postalCode);
      return City.fromJson(response.data);
    });
  }
}
