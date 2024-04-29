import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_page/profile_page/components/profile_card.dart';
import 'package:profile_page/profile_page/components/profile_action.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> svgIconPath = [
      "light_mode.svg",
      "heart-icon.svg",
      "wifi-off.svg",
      "person.svg",
      "info.svg",
      "starr.svg",
    ];

    List<String> svgIconPath2 = [
      "reload.svg",
      "arrow_right.svg",
      "arrow_right.svg",
      "arrow_right.svg",
      "arrow_right.svg",
      "arrow_right.svg",
    ];

    List<String> ctaText = [
      "Modu Değiştir",
      "Beğenilenler",
      "Çevrimdışı Kullanım",
      "Kullanıcı Ayarları",
      "Hakkımızda",
      'Uygulamayı Puanla',
    ];

    return Column(
      children: [
        ProfileHeaderCard(context),
        SizedBox(
          height: 330.h,
          child: ListView.builder(
            itemCount: svgIconPath.length,
            itemBuilder: (BuildContext context, int index) {
              return profileCTA(
                context,
                svg1: "assets/svgs/${svgIconPath[index]}",
                svg2: "assets/svgs/${svgIconPath2[index]}",
                ctaText: ctaText[index],
                ctaLabel: ctaText[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
