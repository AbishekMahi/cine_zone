import 'package:cine_zone/utils/news-widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({super.key});

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const Icon(
              Icons.bookmark_border_rounded,
              size: 25,
              color: appTextTheme,
            ),
            const SizedBox(width: 5),
            Text(
              'Bookmarks',
              style: GoogleFonts.manrope(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  color: appTextTheme),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(children: [
            ListNewsContainer(
                ontouch: () {},
                poster:
                    'https://gumlet.assettype.com/filmcompanion%2F2022-11%2F26919fe3-e5ee-40d8-8b64-12c0aeb6e499%2Flove_today_2.jpg',
                tag: '🎵songs',
                title:
                    'Love Today had a very good opening weekend with an excellent trajectory.'),
            ListNewsContainer(
                ontouch: () {},
                title:
                    'Varisu song Ranjithame’s promo: Vijay turns singer for dance number',
                poster:
                    'https://images.indianexpress.com/2022/11/varisu-song.jpg',
                tag: '🎵songs'),
            ListNewsContainer(
                ontouch: () {},
                title:
                    'Varisu song Ranjithame’s promo: Vijay turns singer for dance number',
                poster:
                    'https://images.indianexpress.com/2022/10/Dhanush-in-Naane-Varuven-trailer.jpg',
                tag: 'OTT'),
            ListNewsContainer(
              ontouch: () {},
              poster: 'https://i.postimg.cc/XN1qxHq7/Ponniyin-Selvan.png',
              tag: 'Box office',
              title:
                  'Ponniyin Selvan 1 Box Office Day 8: Mani Ratnam Directorial...',
            ),
            ListNewsContainer(
                ontouch: () {},
                poster:
                    'https://tracktollywood.com/wp-content/uploads/2022/11/IMG_20221101_185317.jpg',
                tag: 'Songs',
                title:
                    'Love Today had a very good opening weekend with an excellent trajectory.'),
            const SizedBox(
              height: 70,
            )
          ]),
        ),
      ),
    );
  }
}
