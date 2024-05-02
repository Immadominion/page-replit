import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/profile_page/components/profile_action.dart';
import 'package:profile_page/profile_page/profile_app_bar.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(
        action1: "currency_exchange",
        action2: "bookmark",
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/arrow-left.svg",
                    width: 12.sp,
                    height: 20.sp,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "Hesap Ayarları",
                    style: GoogleFonts.hankenGrotesk(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            profileCTA(
              context,
              svg1: "assets/svgs/icon.svg",
              svg2: "assets/svgs",
              ctaText: "Yusuf Engiz",
              ctaLabel: "Edit Name",
            ),
            SizedBox(
              height: 10.sp,
            ),
            profileCTA(
              context,
              svg1: "assets/svgs/icon.svg",
              svg2: "assets/svgs",
              ctaText: "eposta-61@gmail.com",
              ctaLabel: "Edit Email",
            ),
            SizedBox(
              height: 15.sp,
            ),
            Container(
              width: 170.sp,
              height: 38.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromARGB(255, 239, 192, 92)),
              child: Center(    
                child: Text(
                  "Değişiklikleri Kaydet",
                  style: GoogleFonts.hankenGrotesk(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
