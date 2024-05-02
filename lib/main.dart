// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_page/%C3%87evrimd%C4%B1%C5%9F%C4%B1_indirilmi%C5%9F_Kullan%C4%B1m/offline_downloads.dart';
import 'package:profile_page/Hesap_Ayarlar%C4%B1/Hesap_Ayarlar%C4%B1.dart';
import 'package:profile_page/profile_page/profile_main_page.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        return const AccountSettings();
      },
    );
  }
}

// StoryScreen()
// ProfileScreen()
// OfflineDownloads()
