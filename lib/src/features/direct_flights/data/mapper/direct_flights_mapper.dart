import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frifri/src/features/direct_flights/data/model/direct_flights_model.dart';

/// {@template direct_flights_mapper}
/// DirectFlightsMapper class.
/// {@endtemplate}
final class DirectFlightsMapper {
  /// {@macro direct_flights_mapper}

  static DirectFlightsModel leadToMap(DocumentSnapshot documentSnapshot) {
    return DirectFlightsModel(
        uuid: documentSnapshot['uuid'],
        departureLocation: documentSnapshot['departureLocation'],
        placeOfArrival: documentSnapshot['placeOfArrival'],
        placeOfArrivalCountryCode:
            documentSnapshot['placeOfArrivalCountryCode'],
        departureLocationCountryCode:
            documentSnapshot['departureLocationCountryCode'],
        flightTime: documentSnapshot['flightTime'],
        price: documentSnapshot['price']);
  }
}
