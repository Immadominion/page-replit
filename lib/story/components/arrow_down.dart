// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ArrowDown extends StatelessWidget {
  const ArrowDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 58.w,
      left: 0.sp,
      right: 0.sp,
      child: SvgPicture.asset(
        "assets/svgs/arrow-down.svg",
        alignment: Alignment.center,
        width: 14.sp,
        height: 16.sp,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}
