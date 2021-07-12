// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'temp',
      serializers.serialize(object.temperature,
          specifiedType: const FullType(num)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(num)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(double)),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'temp':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final String image;
  @override
  final num temperature;
  @override
  final num feelsLike;
  @override
  final int humidity;
  @override
  final double uvi;
  @override
  final int clouds;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._(
      {required this.image,
      required this.temperature,
      required this.feelsLike,
      required this.humidity,
      required this.uvi,
      required this.clouds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(image, 'Weather', 'image');
    BuiltValueNullFieldError.checkNotNull(
        temperature, 'Weather', 'temperature');
    BuiltValueNullFieldError.checkNotNull(feelsLike, 'Weather', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(humidity, 'Weather', 'humidity');
    BuiltValueNullFieldError.checkNotNull(uvi, 'Weather', 'uvi');
    BuiltValueNullFieldError.checkNotNull(clouds, 'Weather', 'clouds');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        image == other.image &&
        temperature == other.temperature &&
        feelsLike == other.feelsLike &&
        humidity == other.humidity &&
        uvi == other.uvi &&
        clouds == other.clouds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, image.hashCode), temperature.hashCode),
                    feelsLike.hashCode),
                humidity.hashCode),
            uvi.hashCode),
        clouds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('image', image)
          ..add('temperature', temperature)
          ..add('feelsLike', feelsLike)
          ..add('humidity', humidity)
          ..add('uvi', uvi)
          ..add('clouds', clouds))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  num? _temperature;
  num? get temperature => _$this._temperature;
  set temperature(num? temperature) => _$this._temperature = temperature;

  num? _feelsLike;
  num? get feelsLike => _$this._feelsLike;
  set feelsLike(num? feelsLike) => _$this._feelsLike = feelsLike;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _uvi;
  double? get uvi => _$this._uvi;
  set uvi(double? uvi) => _$this._uvi = uvi;

  int? _clouds;
  int? get clouds => _$this._clouds;
  set clouds(int? clouds) => _$this._clouds = clouds;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _temperature = $v.temperature;
      _feelsLike = $v.feelsLike;
      _humidity = $v.humidity;
      _uvi = $v.uvi;
      _clouds = $v.clouds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'Weather', 'image'),
            temperature: BuiltValueNullFieldError.checkNotNull(
                temperature, 'Weather', 'temperature'),
            feelsLike: BuiltValueNullFieldError.checkNotNull(
                feelsLike, 'Weather', 'feelsLike'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, 'Weather', 'humidity'),
            uvi: BuiltValueNullFieldError.checkNotNull(uvi, 'Weather', 'uvi'),
            clouds: BuiltValueNullFieldError.checkNotNull(
                clouds, 'Weather', 'clouds'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
