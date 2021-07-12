library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weatherappp/src/models/location.dart';
import 'package:weatherappp/src/models/weather.dart';
import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppState, Location])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
