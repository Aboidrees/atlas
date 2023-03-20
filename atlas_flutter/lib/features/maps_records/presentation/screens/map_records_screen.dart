import 'package:atlas_flutter/core/layouts/screen_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapsRecordsScreen extends ConsumerWidget {
  const MapsRecordsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ScreenLayout(
      child: Center(
        child: Text("Maps Records Screen"),
      ),
    );
  }
}
