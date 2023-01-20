import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/weather/repositories/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository();
});

//Future use async
final weatherFutureProvider = FutureProvider<Weathers>((ref) async {
  return ref.watch(weatherRepositoryProvider).getCurrentWeather('Bekasi');
});
