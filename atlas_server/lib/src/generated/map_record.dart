/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class MapRecord extends _i1.TableRow {
  MapRecord({
    int? id,
    required this.title,
    required this.barcode,
    required this.date,
    required this.num,
    required this.scale,
    required this.destination,
    required this.documents,
    required this.notes,
  }) : super(id);

  factory MapRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MapRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      barcode: serializationManager
          .deserialize<String>(jsonSerialization['barcode']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      num: serializationManager.deserialize<int>(jsonSerialization['num']),
      scale:
          serializationManager.deserialize<String>(jsonSerialization['scale']),
      destination: serializationManager
          .deserialize<String>(jsonSerialization['destination']),
      documents: serializationManager
          .deserialize<List<String>>(jsonSerialization['documents']),
      notes:
          serializationManager.deserialize<String>(jsonSerialization['notes']),
    );
  }

  static final t = MapRecordTable();

  String title;

  String barcode;

  DateTime date;

  int num;

  String scale;

  String destination;

  List<String> documents;

  String notes;

  @override
  String get tableName => 'maps_records';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'barcode': barcode,
      'date': date,
      'num': num,
      'scale': scale,
      'destination': destination,
      'documents': documents,
      'notes': notes,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'barcode': barcode,
      'date': date,
      'num': num,
      'scale': scale,
      'destination': destination,
      'documents': documents,
      'notes': notes,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'barcode': barcode,
      'date': date,
      'num': num,
      'scale': scale,
      'destination': destination,
      'documents': documents,
      'notes': notes,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'barcode':
        barcode = value;
        return;
      case 'date':
        date = value;
        return;
      case 'num':
        num = value;
        return;
      case 'scale':
        scale = value;
        return;
      case 'destination':
        destination = value;
        return;
      case 'documents':
        documents = value;
        return;
      case 'notes':
        notes = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MapRecord>> find(
    _i1.Session session, {
    MapRecordExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MapRecord>(
      where: where != null ? where(MapRecord.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MapRecord?> findSingleRow(
    _i1.Session session, {
    MapRecordExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MapRecord>(
      where: where != null ? where(MapRecord.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MapRecord?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<MapRecord>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MapRecordExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MapRecord>(
      where: where(MapRecord.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    MapRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    MapRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    MapRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MapRecordExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MapRecord>(
      where: where != null ? where(MapRecord.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MapRecordExpressionBuilder = _i1.Expression Function(MapRecordTable);

class MapRecordTable extends _i1.Table {
  MapRecordTable() : super(tableName: 'maps_records');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final barcode = _i1.ColumnString('barcode');

  final date = _i1.ColumnDateTime('date');

  final num = _i1.ColumnInt('num');

  final scale = _i1.ColumnString('scale');

  final destination = _i1.ColumnString('destination');

  final documents = _i1.ColumnSerializable('documents');

  final notes = _i1.ColumnString('notes');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        barcode,
        date,
        num,
        scale,
        destination,
        documents,
        notes,
      ];
}

@Deprecated('Use MapRecordTable.t instead.')
MapRecordTable tMapRecord = MapRecordTable();
