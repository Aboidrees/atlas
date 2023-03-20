import 'package:atlas_flutter/core/layouts/screen_layout.dart';
import 'package:atlas_flutter/features/maps_records/presentation/screens/map_records_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/",
      name: AppRoute.home.name,
      builder: (context, state) => const ScreenLayout(
        child: Center(child: Text("Home")),
      ),
    ),
    GoRoute(
      path: "/${AppRoute.mapsRecords.name}",
      name: AppRoute.mapsRecords.name,
      builder: (context, state) => const MapsRecordsScreen(),
    ),
  ],
);

enum AppRoute { home, mapsRecords, mapRecord, locationDetails, location }
