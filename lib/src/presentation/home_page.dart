import 'package:flutter/material.dart';
import 'package:weatherappp/src/containers/location_container.dart';
import 'package:weatherappp/src/containers/weather_container.dart';
import 'package:weatherappp/src/models/location.dart';
import 'package:weatherappp/src/models/weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LocationContainer(builder: (BuildContext context, Location? location) {
      return WeatherContainer(builder: (BuildContext context, Weather? weather) {
        if (weather == null || location == null) {
          return Container(
              height: 300,
              child: const CircularProgressIndicator(backgroundColor: Colors.white)
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'WEATHER',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.1,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 50.0),
                    Text(
                      '${location.city}, ${location.country}',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${(weather.temperature - 275.15).round()} °C',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.network(
                      'http://openweathermap.org/img/wn/${weather.image}@2x.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Text(
                      'Feels like: ${(weather.feelsLike - 275.15).round()} °C',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'UVI: ${weather.uvi}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Humidity: ${weather.humidity} %',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Clouds: ${weather.clouds} %',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      });
    });
  }
}
