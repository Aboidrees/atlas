/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:atlas_client/src/protocol/map_record.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointMapsRecords extends _i1.EndpointRef {
  _EndpointMapsRecords(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'mapsRecords';

  _i2.Future<List<_i3.MapRecord>> get() =>
      caller.callServerEndpoint<List<_i3.MapRecord>>(
        'mapsRecords',
        'get',
        {},
      );

  _i2.Future<_i3.MapRecord?> create(_i3.MapRecord newMapRecord) =>
      caller.callServerEndpoint<_i3.MapRecord?>(
        'mapsRecords',
        'create',
        {'newMapRecord': newMapRecord},
      );

  _i2.Future<_i3.MapRecord?> update(_i3.MapRecord newMapRecord) =>
      caller.callServerEndpoint<_i3.MapRecord?>(
        'mapsRecords',
        'update',
        {'newMapRecord': newMapRecord},
      );

  _i2.Future<bool> delete(int mapRecordID) => caller.callServerEndpoint<bool>(
        'mapsRecords',
        'delete',
        {'mapRecordID': mapRecordID},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    mapsRecords = _EndpointMapsRecords(this);
  }

  late final _EndpointMapsRecords mapsRecords;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'mapsRecords': mapsRecords};
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
