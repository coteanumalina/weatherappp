import 'package:redux/redux.dart';
import 'package:weatherappp/src/actions/get_location.dart';
import 'package:weatherappp/src/actions/get_weather.dart';
import 'package:weatherappp/src/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
]);

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.location.replace(action.location);
  });
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.weather.replace(action.weather);
  });
}
