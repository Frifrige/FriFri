import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';

/// {@template direct_flights_model}
/// DirectFlightsModel class.
/// {@endtemplate}
class DirectFlightsModel extends DirectFligthsEntity {
  /// {@macro direct_flights_model}

  DirectFlightsModel(
      {required super.uuid,
      required super.departureLocation,
      required super.placeOfArrival,
      required super.placeOfArrivalCountryCode,
      required super.departureLocationCountryCode,
      required super.flightTime,
      required super.price});
}
