import 'package:atlas_flutter/config/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenLayout extends StatelessWidget {
  final Widget? child;
  const ScreenLayout({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.map, size: 48),
              const Text("أطلس", style: TextStyle(fontSize: 18)),
              const SizedBox(width: 32),
              LinkWidget(
                text: "سجلات الخرائط",
                link: AppRoute.mapsRecords.name,
                icon: Icons.menu,
              ),
              const SizedBox(width: 8),
              LinkWidget(
                text: "معلومات المواقع",
                link: AppRoute.locationDetails.name,
                icon: Icons.location_pin,
              ),
            ],
          ),
        ),
        body: child ?? Container(),
      ),
    );
  }
}

class LinkWidget extends StatelessWidget {
  final String text;
  final String link;
  final IconData? icon;

  const LinkWidget({
    super.key,
    required this.text,
    required this.link,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pushReplacementNamed(link),
      child: Row(
        children: [
          icon != null ? Icon(icon!) : Container(),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
