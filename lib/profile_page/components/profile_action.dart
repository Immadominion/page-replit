import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/profile_page/components/build_svg_widget.dart';

Widget profileCTA(
  BuildContext context, {
  String svg2 = "assets/svgs/starr.svg",
  String svg1 = 'assets/svgs/starr.svg',
  String ctaText = "CTA text",
  String ctaLabel = "CTA button",
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Theme.of(context).hoverColor,
        ),
        bottom: BorderSide(
          color: Theme.of(context).hoverColor,
        ),
      ),
    ),
    child: Row(
      children: [
        buildIcon(svg1, ctaLabel, context),
        SizedBox(width: 10.w),
        Text(
          ctaText,
          style: GoogleFonts.hankenGrotesk(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
        const Spacer(),
        buildIcon(
          svg2,
          ctaLabel,
          context,
          width: 12.w,
          height: 12.h,
        ),
      ],
    ),
  );
}
