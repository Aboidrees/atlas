/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/map_record_endpoint.dart' as _i2;
import 'package:atlas_server/src/generated/map_record.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'mapsRecords': _i2.MapsRecordsEndpoint()
        ..initialize(
          server,
          'mapsRecords',
          null,
        )
    };
    connectors['mapsRecords'] = _i1.EndpointConnector(
      name: 'mapsRecords',
      endpoint: endpoints['mapsRecords']!,
      methodConnectors: {
        'get': _i1.MethodConnector(
          name: 'get',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mapsRecords'] as _i2.MapsRecordsEndpoint)
                  .get(session),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'newMapRecord': _i1.ParameterDescription(
              name: 'newMapRecord',
              type: _i1.getType<_i3.MapRecord>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mapsRecords'] as _i2.MapsRecordsEndpoint).create(
            session,
            params['newMapRecord'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'newMapRecord': _i1.ParameterDescription(
              name: 'newMapRecord',
              type: _i1.getType<_i3.MapRecord>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mapsRecords'] as _i2.MapsRecordsEndpoint).update(
            session,
            params['newMapRecord'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'mapRecordID': _i1.ParameterDescription(
              name: 'mapRecordID',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mapsRecords'] as _i2.MapsRecordsEndpoint).delete(
            session,
            params['mapRecordID'],
          ),
        ),
      },
    );
  }
}
