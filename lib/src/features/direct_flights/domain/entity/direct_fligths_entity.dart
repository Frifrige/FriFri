/// {@template direct_fligths_entity}
/// DirectFligthsEntity class.
/// {@endtemplate}
class DirectFligthsEntity {
  /// {@macro direct_fligths_entity}

  DirectFligthsEntity(
      {required this.uuid,
      required this.departureLocation,
      required this.placeOfArrival,
      required this.placeOfArrivalCountryCode,
      required this.departureLocationCountryCode,
      required this.flightTime,
      required this.price});

  final String uuid;
  final String departureLocation;
  final String placeOfArrival;
  final String placeOfArrivalCountryCode;
  final String departureLocationCountryCode;
  final String flightTime;
  final String price;
}
