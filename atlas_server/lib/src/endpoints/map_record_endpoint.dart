import 'package:atlas_server/src/generated/map_record.dart';
import 'package:serverpod/serverpod.dart';

class MapsRecordsEndpoint extends Endpoint {
  // list
  Future<List<MapRecord>> get(Session session) async {
    try {
      List<MapRecord> mapsRecords = await MapRecord.find(session);
      return mapsRecords;
    } catch (e) {
      return [];
    }
  }

  // create
  Future<MapRecord?> create(Session session, MapRecord newMapRecord) async {
    try {
      await MapRecord.insert(session, newMapRecord);
      return newMapRecord;
    } catch (e) {
      return null;
    }
  }

  // update
  Future<MapRecord?> update(Session session, MapRecord newMapRecord) async {
    try {
      final updated = await MapRecord.update(session, newMapRecord);
      return updated ? newMapRecord : null;
    } catch (e) {
      return null;
    }
  }

  // delete
  Future<bool> delete(Session session, int mapRecordID) async {
    try {
      await MapRecord.delete(session, where: (table) => table.id.equals(mapRecordID));
      return true;
    } catch (e) {
      return false;
    }
  }
}
