import 'package:flutter/material.dart';
import 'package:profile_page/profile_page/profile_app_bar.dart';

class PasswordSettings extends StatefulWidget {
  const PasswordSettings({super.key});

  @override
  State<PasswordSettings> createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(
        action1: "currency_exchange",
        action2: "bookmark",
      ),
    );
  }
}