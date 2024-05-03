import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_page/profile_page/profile_app_bar.dart';

class OfflineDownloads extends StatefulWidget {
  const OfflineDownloads({super.key});

  @override
  State<OfflineDownloads> createState() => _OfflineDownloadsState();
}

class _OfflineDownloadsState extends State<OfflineDownloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAppBar(
                action1: "download",
                action2: "delete",
              ),
              OfflineViewWithDate(
                itemCount: 2,
                dateAsString: "Bugün",
              ),
              OfflineViewWithDate(
                itemCount: 2,
                dateAsString: "Dün",
              ),
              OfflineViewWithDate(
                itemCount: 3,
                dateAsString: "Bu Hafta",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OfflineViewWithDate extends StatelessWidget {
  final int itemCount;
  final String dateAsString;
  const OfflineViewWithDate({
    super.key,
    required this.itemCount,
    required this.dateAsString,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(15.sp),
          child: Text(
            dateAsString,
            style: GoogleFonts.hankenGrotesk(
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
            ),
          ),
        ),
        SizedBox(
          height: double.tryParse("${85.h * itemCount}"),
          child: ListView.builder(
              itemCount: itemCount,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
                  height: 95.h,
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
                      Expanded(
                        flex: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "22:15 • ",
                                  style: GoogleFonts.hankenGrotesk(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                Text(
                                  "Siyaset",
                                  style: GoogleFonts.hankenGrotesk(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                              width: 200.w,
                              child: Text(
                                "Ünlü isimlerden Ramazan Bayramı paylaşımları! Ailesini kaybeden Zafer Algöz'ün sözleri duygulandırdı",
                                maxLines: 4,
                                style: GoogleFonts.hankenGrotesk(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            // SvgPicture.asset(
                            //   "assets/svgs/familia.svg",
                            //   height: 9.sp,
                            //   width: 22.w,
                            // ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/pngs/iha.png",
                                  height: 18.sp,
                                  width: 22.w,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "İhlas Haber Ajansı",
                                  style: GoogleFonts.hankenGrotesk(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                      color: const Color.fromARGB(
                                          255, 85, 161, 151)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: .5.sp),
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(10.r),
                      //     child: SvgPicture.asset(
                      //       "assets/svgs/familia.svg",
                      //       height: 77.sp,
                      //       width: 159.w,
                      //     ),
                      //   ),
                      // ),
                      Flexible(
                        flex: 145,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            "assets/pngs/famil.png",
                            height: 77.sp,
                            width: 159.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}

//To achieve this,
