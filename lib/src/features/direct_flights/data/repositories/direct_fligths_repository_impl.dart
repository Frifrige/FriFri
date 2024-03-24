import 'package:frifri/src/features/direct_flights/data/data_sources/direct_flights_data_source.dart';
import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';
import 'package:frifri/src/features/direct_flights/domain/repositories/direct_flights_repository.dart';

/// {@template direct_fligths_repository_impl}
/// DirectFligthsRepositoryImpl class.
/// {@endtemplate}
final class DirectFligthsRepositoryImpl implements DirectFlightsRepository {
  /// {@macro direct_fligths_repository_impl}
  DirectFligthsRepositoryImpl(this.directFlightsDataSources);

  final IDirectFlightsDataSource directFlightsDataSources;

  @override
  Future<List<DirectFligthsEntity>> fetchDirectFlights() {
    // TODO: implement fetchDirectFlights
    throw UnimplementedError();
  }

  @override
  Stream<List<DirectFligthsEntity>> fetchRealTimeFlight() async* {
    yield* directFlightsDataSources.fetchRealTimeFlight();
  }
}
