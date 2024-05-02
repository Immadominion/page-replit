import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_page/profile_page/profile_app_bar.dart';
import 'package:profile_page/profile_page/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
    );
    return const Scaffold(
      appBar: ProfileAppBar(
        action1: "currency_exchange", 
        action2: "bookmark",
      ),
      body: ProfileBody(),
    );
  }
}
