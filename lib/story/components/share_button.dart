// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 191.5.w,
      right: 15.sp,
      child: GestureDetector(
        onTap: () async {
          shareApp();
          // shareApp;
        },
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/svgs/share.svg",
              alignment: Alignment.center,
              width: 22.sp,
              height: 27.5.sp,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            SizedBox(
              height: 5.sp,
            ),
            Text(
              "Paylaş",
              style: GoogleFonts.hankenGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> shareApp() async {
  // Set the app link and the message to be shared
  const String appLink =
      'https://play.google.com/store/apps/details?id=com.pigeon.carpedev';
  const String message = 'Check out the new Pigeon app: $appLink';

  // Share the app link and message using the share dialog
  await FlutterShare.share(title: 'Share App', text: message, linkUrl: appLink);
}
