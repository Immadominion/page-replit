import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_page/profile_page/components/build_svg_widget.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String action1;
  final String action2;
  const ProfileAppBar({super.key, required this.action1, required this.action2});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    String img = Theme.of(context).brightness == Brightness.dark ? "Logo" : "Logo-dark";
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: SvgPicture.asset(
          "assets/svgs/$img.svg",
          width: 109.sp,
          height: 33.63.sp,
        ),
      ),
      leadingWidth: 150.w,
      elevation: 4.sp,
      shadowColor: Colors.black54,
      actions: [
        buildActionIcon(
          'assets/svgs/$action1.svg',
          'Convert',
          context,
          width: 20.w,
          height: 22.h,
          
        ),
        SizedBox(
          width: 20.w,
        ),
        buildActionIcon(
          'assets/svgs/$action2.svg',
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
