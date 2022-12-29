import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBack,
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: const [
          Pages(
              title:
                  'Love Today has a very good weekend with excellent trend, Coffee with Kadhal and Nitham Oru Vanam dull.',
              poster:
                  'https://gumlet.assettype.com/filmcompanion%2F2022-11%2F26919fe3-e5ee-40d8-8b64-12c0aeb6e499%2Flove_today_2.jpg'),
          Pages(
              title:
                  'Love Today has a very good weekend with excellent trend, Coffee with Kadhal and Nitham Oru Vanam dull.',
              poster:
                  'https://images.indianexpress.com/2022/11/varisu-song.jpg'),
          Pages(
              title:
                  'Love Today has a very good weekend with excellent trend, Coffee with Kadhal and Nitham Oru Vanam dull.',
              poster:
                  'https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/11/thalapathy-vijays-varisu-vs-ajith-kumars-thunivu-in-screen-count-01.jpg'),
          Pages(
              title:
                  'Love Today has a very good weekend with excellent trend, Coffee with Kadhal and Nitham Oru Vanam dull.',
              poster:
                  'https://www.pinkvilla.com/english/images/2022/09/2111268354_ponniyin-selvan-1-live-updates-pinkvilla_1280*720.jpg'),
        ],
      ),
    );
  }
}

class Pages extends StatefulWidget {
  final String title;
  final String poster;

  const Pages({super.key, required this.title, required this.poster});

  @override
  State<Pages> createState() => _PagesState(title, poster);
}

class _PagesState extends State<Pages> {
  final String title;
  final String poster;

  _PagesState(this.title, this.poster);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBack,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.explore_outlined,
                  size: 25,
                  color: appTextTheme,
                ),
                const SizedBox(width: 5),
                Text(
                  'Explore',
                  style: GoogleFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      color: appTextTheme),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: buttonBackColor,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    color: appTextTheme,
                    onPressed: () {},
                    splashRadius: 24,
                    icon: const Icon(
                      Icons.bookmark_border,
                    ),
                    iconSize: 28,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: buttonBackColor,
                  ),
                  child: IconButton(
                    color: appTextTheme,
                    onPressed: () {},
                    splashRadius: 24,
                    icon: const Icon(
                      EvaIcons.paperPlaneOutline,
                    ),
                    iconSize: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.81,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(appTheme),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      onPressed: (() {}),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        child: Text(
                          'View Source',
                          style: GoogleFonts.manrope(
                              fontSize: 14,
                              color: const Color(0xFFffffff),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    // InkWell(
                    //   borderRadius: BorderRadius.circular(30),
                    //   onTap: () {},
                    //   child: Ink(
                    //     padding: const EdgeInsets.symmetric(
                    //         vertical: 8, horizontal: 12),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       color: Colors.blueAccent,
                    //     ),
                    //     child: Text(
                    //       'View Source',
                    //       textAlign: TextAlign.center,
                    //       style: GoogleFonts.manrope(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w600,
                    //           height: 0,
                    //           color: appTextTheme),
                    //     ),
                    //   ),
                    // ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 3,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 0,
                            color: appTextTheme),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: appTheme,
                        ),
                        child: Text(
                          '🎬 Movies',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 0,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CachedNetworkImage(
                          imageUrl: poster,
                          width: double.infinity,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Text(
                            '~ Source Nikhil Murugan',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.manrope(
                                fontStyle: FontStyle.italic,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: appTextTheme),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 300),
                        child: AutoSizeText(
                          'Tamil romantic comedy Love Today had a very good opening weekend with an excellent trajectory. The film had a good start on Friday but came on its own on Saturday with a big 70 percent jump and then another surge of 25 percent on Sunday. The weekend collections amounted to Rs. 13.50 crores approx, with Tamil Nadu making Rs. 12.70 crores approx and another Rs. 80 lakhs came from Karnataka. In Karnataka film saw HUGE growth over the weekend, with Sunday collecting 6 times its Friday numbers. ',
                          maxLines: 10,
                          // minFontSize: 12,
                          maxFontSize: 18,
                          style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: dimText),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: appTheme,
            child: Text(
              'Scroll down for more',
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  color: appTextTheme),
            ),
          )
        ],
      ),
    );
  }
}

// \nThe growth over the weekend has given the film a platform to post a big lifetime total. Director Pradeep Ranganathan’s debut 2019 released Super Hit Comali, went on to gross Rs. 40 crores in Tamil Nadu. It will be targeting to topple that, possibly even reaching Rs. 50 crores depending on how it sustains in the coming weeks.
