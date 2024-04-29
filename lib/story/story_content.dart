import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryContent extends StatefulWidget {
  const StoryContent({super.key});

  @override
  State<StoryContent> createState() => _StoryContentState();
}

class _StoryContentState extends State<StoryContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //  --------------------------------- NOTE: Story stays here at the bottom of the screen
        Positioned(
          bottom: 106.h,
          left: 15.h,
          right: 15.h,
          child: SizedBox(
            width: 345.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-------------------------- NOTE: Story -- TITLE AND DESCRIPTION
                Text(
                  "Son Dakika",
                  style: GoogleFonts.hankenGrotesk(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  "Murat Sancak deliye döndü: Mert Hakan'a söyle şoförüne sahip çıksın !",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.hankenGrotesk(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
