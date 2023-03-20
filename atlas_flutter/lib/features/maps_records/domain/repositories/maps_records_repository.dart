import 'package:atlas_client/atlas_client.dart';
import 'package:atlas_flutter/core/error/failures.dart';
import 'package:atlas_flutter/core/interfaces/repository_interface.dart';
import 'package:atlas_flutter/core/network/network_checker.dart';
import 'package:atlas_flutter/features/maps_records/data/datasources/maps_records_local_data_source.dart';
import 'package:atlas_flutter/features/maps_records/data/datasources/maps_records_remote_data_source.dart';

class MapsRecordsRepository implements RepositoryInterface<MapRecord> {
  final MapsRecordsRemoteDataSource remoteDataSource;
  final MapsRecordsLocalDataSource localDataSource;
  final NetworkChecker networkChecker;

  MapsRecordsRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkChecker,
  });

  @override
  Future<MapRecord?> create(MapRecord model) async {
    if (await networkChecker.isConnected) {
      try {
        return await remoteDataSource.create(model);
      } catch (e) {
        throw ServerFailure(errorMessage: e.toString());
      }
    }
    throw ServerFailure(errorMessage: "This is a server exception");
  }

  @override
  Future<bool> delete(int id) async {
    if (await networkChecker.isConnected) {
      try {
        return await remoteDataSource.delete(id);
      } catch (e) {
        throw ServerFailure(errorMessage: e.toString());
      }
    }
    throw ServerFailure(errorMessage: "Could not connect server");
  }

  @override
  Future<List<MapRecord>?> get() async {
    if (await networkChecker.isConnected) {
      try {
        final remote = await remoteDataSource.get();
        if (await localDataSource.store(remote)) {
          throw CacheFailure(errorMessage: "Could not cache the data");
        }
        return remote;
      } catch (e) {
        throw ServerFailure(errorMessage: e.toString());
      }
    } else {
      try {
        final local = localDataSource.restore();
        return local;
      } catch (e) {
        throw CacheFailure(errorMessage: "Could not access cached data");
      }
    }
  }

  @override
  Future<MapRecord?> getByID(int id) {
    throw UnimplementedError();
  }

  @override
  Future<MapRecord?> update(MapRecord model) async {
    if (await networkChecker.isConnected) {
      try {
        return await remoteDataSource.update(model);
      } catch (e) {
        throw ServerFailure(errorMessage: e.toString());
      }
    }

    throw ServerFailure(errorMessage: "Could not connect server");
  }
}
