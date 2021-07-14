import 'package:redux/redux.dart';
import 'package:weatherappp/src/actions/get_location.dart';
import 'package:weatherappp/src/actions/get_weather.dart';
import 'package:weatherappp/src/data/location_api.dart';
import 'package:weatherappp/src/data/weather_api.dart';
import 'package:weatherappp/src/models/app_state.dart';
import 'package:weatherappp/src/models/location.dart';
import 'package:weatherappp/src/models/weather.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics(this._locationApi, this._weatherApi);

  final LocationApi _locationApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocation>(_getLocation),
      TypedEpic<AppState, GetWeather>(_getWeather),
    ]);
  }

  Stream<Object> _getLocation(Stream<GetLocation> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetLocation action) => _locationApi.getLocation())
        .expand<Object>((Location location) {
      return <Object>[
        GetLocationSuccessful(location),
        GetWeather(location),
      ];
    })
        .onErrorReturnWith((Object error) => GetLocationError(error));
  }

  // try {
  //   final Location location = await _locationApi.getLocation();
  //   store.dispatch(GetLocationSuccessful(location));
  //   store.dispatch(GetWeather(location));
  // } catch (error) {
  //   store.dispatch(GetLocationError(error));
  // }


  Stream<Object> _getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather action) => _weatherApi.getWeather(store.state.location!))
        .map<Object>((Weather weather) => GetWeatherSuccessful(weather))
        .onErrorReturnWith((Object error) => GetWeatherError(error));
  }
}

    // try {
    //   final Weather weather = await _weatherApi.getWeather(action.location);
    //   store.dispatch(GetWeatherSuccessful(weather));
    // } catch (error) {
    //   store.dispatch(GetWeatherError(error));
    // }
