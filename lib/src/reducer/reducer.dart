import 'package:redux/redux.dart';
import 'package:weatherappp/src/actions/get_location.dart';
import 'package:weatherappp/src/actions/get_weather.dart';
import 'package:weatherappp/src/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetLocation>(_getLocation),
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetLocationError>(_getLocationError),
  TypedReducer<AppState, GetWeather>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
]);

AppState _getLocation(AppState state, GetLocation action) {
  return state.rebuild((AppStateBuilder b) {});
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.location.replace(action.location);
  });
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.rebuild((AppStateBuilder b) {});
}

AppState _getWeather(AppState state, GetWeather action) {
  return state.rebuild((AppStateBuilder b) {});
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    print(action.weather);
    print('weather');
    b.weather.replace(action.weather);
  });
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.rebuild((AppStateBuilder b) {
    print('logHereTheError');
    print(action.error);
  });
}
