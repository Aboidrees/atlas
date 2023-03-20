import 'dart:convert';

import 'package:atlas_client/atlas_client.dart';
import 'package:atlas_flutter/core/interfaces/local_datasource_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapsRecordsLocalDataSource implements LocalDataSourceInterface<List<MapRecord>> {
  final SharedPreferences pref;
  final SerializationManager serializationManager;
  MapsRecordsLocalDataSource({required this.pref, required this.serializationManager});

  @override
  String cacheKey = "MAPS_RECORDS";

  @override
  Future<bool> clear() => pref.remove(cacheKey);

  @override
  Future<List<MapRecord>?> restore() async {
    String? data = pref.getString(cacheKey);

    return (data != null) ? (jsonDecode(data) as List<dynamic>).map((e) => MapRecord.fromJson(jsonDecode(data), serializationManager)).toList() : null;
  }

  @override
  Future<bool> store(List<MapRecord> mapsRecords) {
    return pref.setString(cacheKey, jsonEncode(mapsRecords.map((e) => e.toJson()).toList()));
  }
}
