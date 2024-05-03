// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/%C3%87evrimd%C4%B1%C5%9F%C4%B1_indirilmi%C5%9F_Kullan%C4%B1m/offline_downloads.dart';
import 'package:profile_page/%C5%9Eifre_ayarlar%C4%B1_gece/sifre_ayarlar%C4%B1_gece.dart';
import 'package:profile_page/Hesap_Ayarlar%C4%B1/Hesap_Ayarlar%C4%B1.dart';
import 'package:profile_page/profile_page/profile_main_page.dart';
import 'package:profile_page/story/main_story.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: ListView.builder(
            itemCount: doneScreens.length,
            padding: EdgeInsets.all(15.sp),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => doneScreens[index]),
                  );
                },
                child: Text(
                  "Screen $index",
                  style: GoogleFonts.hankenGrotesk(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


// StoryScreen()
// ProfileScreen()
// OfflineDownloads()
// AccountSettings()
// PasswordSettings()


List<Widget> doneScreens = const <Widget>[
  StoryScreen(),
  ProfileScreen(),
  OfflineDownloads(),
  AccountSettings(),
  PasswordSettings(),
];