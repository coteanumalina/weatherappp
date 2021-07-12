import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:weatherappp/src/actions/get_location.dart';
import 'package:weatherappp/src/data/location_api.dart';
import 'package:weatherappp/src/data/weather_api.dart';
import 'package:weatherappp/src/middleware/middleware.dart';
import 'package:weatherappp/src/models/app_state.dart';
import 'package:weatherappp/src/presentation/home_page.dart';
import 'package:weatherappp/src/reducer/reducer.dart';

void main() {
  const String locationApiUrl = 'http://ip-api.com/json/';
  final Client locationClient = Client();
  final Client weatherClient = Client();
  final LocationApi locationApi = LocationApi(apiUrl: locationApiUrl, client: locationClient);
  final WeatherApi weatherApi = WeatherApi(client: weatherClient);
  final AppMiddleware appMiddleware = AppMiddleware(locationApi, weatherApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: appMiddleware.middleware,
  );
  store.dispatch(GetLocation());

  runApp(WeatherApp(store: store));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key, required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
