import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frifri/src/features/direct_flights/data/mapper/direct_flights_mapper.dart';
import 'package:frifri/src/features/direct_flights/data/model/direct_flights_model.dart';

/// {@template direct_flights_data_source}
/// IDirectFlightsDataSource class.
/// {@endtemplate}
abstract interface class IDirectFlightsDataSource {
  /// {@macro direct_flights_data_source}

  Stream<List<DirectFlightsModel>> fetchRealTimeFlight();
}

/// {@template direct_flights_data_source}
/// DirectFlightsDataSources class.
/// {@endtemplate}
final class DirectFlightsDataSource implements IDirectFlightsDataSource {
  /// {@macro direct_flights_data_source}

  @override
  Stream<List<DirectFlightsModel>> fetchRealTimeFlight() async* {
    try {
      yield* FirebaseFirestore.instance
          .collection('directFlights')
          .snapshots()
          .map((event) =>
              event.docs.map((e) => DirectFlightsMapper.leadToMap(e)).toList());
    } on FirebaseException catch (err, stack) {
      Error.throwWithStackTrace(err, stack);
    } on Object catch (err, stack) {
      Error.throwWithStackTrace(err, stack);
    }
  }
}
