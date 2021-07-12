import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherappp/src/models/serializers.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;

  factory Weather.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, <String, dynamic>{
      ...json,
      'image': json['weather'][0]['icon'] ?? '',
    })!;

  }

  Weather._();

  String get image;

  @BuiltValueField(wireName: 'temp')
  num get temperature;

  @BuiltValueField(wireName: 'feels_like')
  num get feelsLike;

  int get humidity;

  double get uvi;

  int get clouds;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
