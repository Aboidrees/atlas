/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'map_record.dart' as _i2;
import 'package:atlas_server/src/generated/map_record.dart' as _i3;
import 'package:serverpod/protocol.dart' as _i4;
export 'map_record.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.MapRecord) {
      return _i2.MapRecord.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.MapRecord?>()) {
      return (data != null ? _i2.MapRecord.fromJson(data, this) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i3.MapRecord>) {
      return (data as List).map((e) => deserialize<_i3.MapRecord>(e)).toList()
          as dynamic;
    }
    try {
      return _i4.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.MapRecord) {
      return 'MapRecord';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'MapRecord') {
      return deserialize<_i2.MapRecord>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i4.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.MapRecord:
        return _i2.MapRecord.t;
    }
    return null;
  }
}
