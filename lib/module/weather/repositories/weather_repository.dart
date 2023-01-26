import 'dart:async';
import 'dart:math';

enum Weathers {
  sunny('assets/sunny.png'),
  rain('assets/rain.png'),
  cloudy('assets/cloudy.png');

  const Weathers(this.path);

  final String path;
}

class WeatherRepository {
  int _currentWeatherIndex = 0;
  Future<Weathers> getCurrentWeather(String city) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (_currentWeatherIndex > 3) _currentWeatherIndex = 0;
    switch (_currentWeatherIndex++) {
      case 0:
        return Weathers.cloudy;
      case 1:
        return Weathers.rain;
      case 2:
        return Weathers.sunny;
      default:
        throw Exception('Gagal Ambil Data');
    }
  }

  Stream<Weathers> getWeatherStream(String city) async* {
    while (true) {
      yield await getCurrentWeather(city);
    }
  }
}
