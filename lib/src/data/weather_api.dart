import 'dart:convert';
import 'package:http/http.dart';
import 'package:weatherappp/src/models/weather.dart';
import 'package:weatherappp/src/models/location.dart';

class WeatherApi {
  const WeatherApi({required Client client})
      : _client = client;
  final Client _client;

  Future<Weather> getWeather(Location location) async {
    final Uri url = Uri(scheme: 'https', host: 'api.openweathermap.org', pathSegments: <String>[
      'data',
      '2.5',
      'onecall'
    ], queryParameters: <String, String>{
      'appid': '0090e3c81f07b47c0ce63beeb2bbfe94',
      'lat': '${location.lat}',
      'lon': '${location.lon}'
    });
    final Response response = await _client.get(url);
    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    return Weather.fromJson(jsonDecode(response.body)['current']);
  }
}
