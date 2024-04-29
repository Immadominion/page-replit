import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ProfileHeaderCard(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(15.sp),
    child: Row(
      children: [
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            child: Text(
              "YE",
              style: GoogleFonts.hankenGrotesk(
                color: Theme.of(context).colorScheme.onInverseSurface,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Yusuf ENGİZ",
              style: GoogleFonts.hankenGrotesk(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            Text(
              "eposta-61@mail.com",
              style: GoogleFonts.hankenGrotesk(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
