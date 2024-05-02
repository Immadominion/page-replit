// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_page/story/components/arrow_down.dart';
import 'package:profile_page/story/components/arrow_left.dart';
import 'package:profile_page/story/components/share_button.dart';
import 'package:profile_page/story/story_content.dart';

class StoryBody extends StatelessWidget {
  const StoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          "assets/svgs/story_bg.svg",
          fit: BoxFit.cover,
        ),
        const StoryContent(),
        const ArrowLeft(),
        const ArrowDown(),
        const ArrowLeft(),
        const ShareButton(),
      ],
    );
  }
}
