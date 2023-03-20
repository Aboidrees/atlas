import 'package:atlas_client/atlas_client.dart';
import 'package:atlas_flutter/core/interfaces/remote_datasource_interface.dart';

class MapsRecordsRemoteDataSource implements RemoteDataSourceInterface<MapRecord> {
  Client client;

  MapsRecordsRemoteDataSource({required this.client});

  @override
  Future<MapRecord?> create(MapRecord model) async {
    try {
      return await client.mapsRecords.create(model);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> delete(int id) async {
    try {
      return await client.mapsRecords.delete(id);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<MapRecord>> get() async {
    try {
      return await client.mapsRecords.get();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<MapRecord?> getById(int id) {
    throw UnimplementedError();
  }

  @override
  Future<MapRecord?> update(MapRecord model) async {
    try {
      return await client.mapsRecords.update(model);
    } catch (e) {
      return null;
    }
  }
}
