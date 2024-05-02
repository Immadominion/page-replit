import 'package:flutter/material.dart';
import 'package:profile_page/profile_page/profile_app_bar.dart';

class OfflineDownloads extends StatefulWidget {
  const OfflineDownloads({super.key});

  @override
  State<OfflineDownloads> createState() => _OfflineDownloadsState();
}

class _OfflineDownloadsState extends State<OfflineDownloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          ProfileAppBar(
            action1: "download",
            action2: "delete",
          ),
          Text(
            "Bugün",
          ),
        ],
      ),
    );
  }
}
