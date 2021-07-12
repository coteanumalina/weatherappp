import 'package:weatherappp/src/models/weather.dart';
import 'package:weatherappp/src/models/location.dart';

class GetWeather {
  GetWeather(this.location);

  final Location location;
}

class GetWeatherSuccessful {
  GetWeatherSuccessful(this.weather);

  final Weather weather;
}

class GetWeatherError {
  GetWeatherError(this.error);

  final Object error;
}
