  // ignore_for_file: deprecated_member_use

  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget buildActionIcon(
      String assetName, String semanticsLabel, BuildContext context,
      {double? width, double? height}) {
    return SvgPicture.asset(
      assetName,
      semanticsLabel: semanticsLabel,
      width: width,
      height: height,
      color: Theme.of(context).colorScheme.onBackground,
    );
  }

    Widget buildIcon(
      String assetName, String semanticsLabel, BuildContext context,
      {double? width, double? height}) {
    return SizedBox(
      width: width ?? 30.w,
      height: height ?? 30.h,
      child: SvgPicture.asset(
        assetName,
        semanticsLabel: semanticsLabel,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
