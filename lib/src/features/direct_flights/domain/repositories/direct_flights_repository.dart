import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';

/// {@template direct_flights_repository}
/// DirectFlightsRepository class.
/// {@endtemplate}
abstract interface class DirectFlightsRepository {
  /// {@macro direct_flights_repository}

  Future<List<DirectFligthsEntity>> fetchDirectFlights();

  Stream<List<DirectFligthsEntity>> fetchRealTimeFlight();
}
