// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ArrowLeft extends StatelessWidget {
  const ArrowLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15.w,
      top: 48.h,
      child: SvgPicture.asset(
        "assets/svgs/arrow-left.svg",
        width: 12.sp,
        height: 22.sp,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}