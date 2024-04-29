import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/profile_page/components/build_svg_widget.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PIGEON",
              style: GoogleFonts.concertOne(
                fontWeight: FontWeight.w800,
                fontSize: 25.sp,
                letterSpacing: 2.w,
              ),
            ),
            Text(
              "Son Dakika Gelişmeleri",
              style: GoogleFonts.hankenGrotesk(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
      ),
      leadingWidth: 150.w,
      elevation: 4.sp,
      shadowColor: Colors.black54,
      actions: [
        buildActionIcon(
          'assets/svgs/currency_exchange.svg',
          'Convert',
          context,
          width: 20.w,
          height: 22.h,
        ),
        SizedBox(
          width: 20.w,
        ),
        buildActionIcon(
          'assets/svgs/bookmark.svg',
          'Bookmark',
          context,
          width: 18.89.w,
          height: 22.h,
        ),
        SizedBox(
          width: 15.w,
        ),
      ],
    );
  }
}
