import 'package:weatherappp/src/models/location.dart';

class GetLocation {
  GetLocation();
}

class GetLocationSuccessful {
  GetLocationSuccessful(this.location);

  final Location location;
}

class GetLocationError {
  GetLocationError(this.error);

  final Object error;
}
