import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_page/profile_page/profile_main_page.dart';
import 'package:profile_page/story/main_story.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        return const StoryScreen();
      },
    );
  }
}
