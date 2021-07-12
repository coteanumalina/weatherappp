import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weatherappp/src/models/weather.dart';
import 'package:weatherappp/src/models/app_state.dart';
import 'package:redux/redux.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key? key, required this.builder}) :super(key: key);

  final ViewModelBuilder<Weather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Weather?>(
      converter: (Store<AppState> store) => store.state.weather,
      builder: builder,
    );
  }
}