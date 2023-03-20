/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class MapRecord extends _i1.SerializableEntity {
  MapRecord({
    this.id,
    required this.title,
    required this.barcode,
    required this.date,
    required this.num,
    required this.scale,
    required this.destination,
    required this.documents,
    required this.notes,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String barcode;

  DateTime date;

  int num;

  String scale;

  String destination;

  List<String> documents;

  String notes;

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
}
