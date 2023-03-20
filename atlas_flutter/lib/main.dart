import 'package:atlas_client/atlas_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'config/router.dart';

var client = Client('http://localhost:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  usePathUrlStrategy();

  runApp(const ProviderScope(child: AtlasApp()));
}

class AtlasApp extends StatelessWidget {
  const AtlasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Serverpod Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.cairo().fontFamily,
        primarySwatch: createMaterialColor(const Color.fromARGB(255, 112, 10, 54)),
      ),
      routerConfig: goRouter,
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
