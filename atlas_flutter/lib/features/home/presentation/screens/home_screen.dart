import 'package:atlas_flutter/core/layouts/screen_layout.dart';
import 'package:flutter/material.dart';

abstract class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenLayout(child: Text("data"));
  }
}
