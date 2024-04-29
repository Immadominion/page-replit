// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:profile_page/story/components/arrow_down.dart';
import 'package:profile_page/story/components/arrow_left.dart';
import 'package:profile_page/story/components/share_button.dart';
import 'package:profile_page/story/story_content.dart';

class StoryBody extends StatelessWidget {
  const StoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        StoryContent(),
        Placeholder(), //TODO: to remove this line sometime after (ctrl x)
        ArrowLeft(),
        ArrowDown(),
        ArrowLeft(),
        ShareButton(),
      ],
    );
  }
}
