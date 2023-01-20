import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/weather/providers/weather_future_provider.dart';
import 'package:riverpod_demo/module/weather/repositories/weather_repository.dart';

//while Stream use async*
final weatherStreamProvider = StreamProvider<Weathers>((ref) async* {
  await ref.watch(weatherRepositoryProvider).getCurrentWeather('Jakarta');
});
