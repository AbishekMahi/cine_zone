import 'package:cached_network_image/cached_network_image.dart';
import 'package:cine_zone/screens/all-news.dart';
import 'package:cine_zone/screens/main-search.dart';
import 'package:cine_zone/utils/constants.dart';
import 'package:cine_zone/utils/textfields.dart';
import 'package:cine_zone/utils/news-widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appDarkBack,
        elevation: 0,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back 👋',
                  style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 0,
                      color: appTextTheme),
                ),
                Text(
                  'Abishek',
                  style: GoogleFonts.manrope(
                      fontSize: 18,
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
                  child: IconButton(
                    color: appTextTheme,
                    onPressed: () {},
                    splashRadius: 24,
                    icon: const Icon(
                      Icons.notifications_outlined,
                    ),
                    iconSize: 28,
                  ),
                ),
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
                      Icons.sunny,
                    ),
                    iconSize: 28,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0x4AFAFAFA),
                    backgroundImage: CachedNetworkImageProvider(
                      "https://i.scdn.co/image/ab6761610000e5eb1862c3c0429dee4bd19b57c0",
                    ),
                    foregroundImage: CachedNetworkImageProvider(
                      "https://i.scdn.co/image/ab6761610000e5eb1862c3c0429dee4bd19b57c0",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const MainSearch()));
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: buttonBackColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        EvaIcons.search,
                        size: 24,
                        color: appTextTheme,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search movies, news & articles',
                        style: GoogleFonts.manrope(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0,
                            color: appTextTheme),
                      ),
                    ],
                  ),
                ),
              ),
              // SearchField(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 0,
                          color: appTextTheme),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Chips(
                            category: 'Trailers',
                          ),
                          Chips(category: '🎬 Movies'),
                          Chips(category: '🎵 Songs'),
                          Chips(category: 'Audio launch'),
                          Chips(category: 'Box Office'),
                          Chips(category: 'OTT'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Chips(category: 'Audio launch'),
                          Chips(category: 'Trailers'),
                          Chips(
                            category: '🎬 Movies',
                          ),
                          Chips(category: 'OTT'),
                          Chips(category: 'Box Office'),
                          Chips(category: '🎵 Songs'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '🔥Trending ',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 0,
                          color: appTextTheme),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingContainer(
                        ontouch: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllNews(),
                            ),
                          );
                        },
                        poster:
                            'https://gumlet.assettype.com/filmcompanion%2F2022-11%2F26919fe3-e5ee-40d8-8b64-12c0aeb6e499%2Flove_today_2.jpg',
                        tag: 'New release',
                        title:
                            'Ponniyin Selvan 1 Box Office Day 8: Mani Ratnam Directorial...'),
                    TrendingContainer(
                        ontouch: () {},
                        poster:
                            'https://images.indianexpress.com/2022/11/varisu-song.jpg',
                        tag: 'Box office',
                        title:
                            'Varisu song Ranjithame’s promo: Vijay turns singer for dance number'),
                    TrendingContainer(
                        ontouch: () {},
                        poster:
                            'https://i.postimg.cc/XN1qxHq7/Ponniyin-Selvan.png',
                        tag: 'Box office',
                        title:
                            'Varisu song Ranjithame’s promo: Vijay turns singer for dance number'),
                    TrendingContainer(
                        ontouch: () {},
                        poster:
                            'https://images.indianexpress.com/2022/10/Dhanush-in-Naane-Varuven-trailer.jpg',
                        tag: 'OTT',
                        title:
                            'Ponniyin Selvan 1 Box Office Day 8: Mani Ratnam Directorial...'),
                    TrendingContainer(
                        ontouch: () {},
                        poster:
                            'https://tracktollywood.com/wp-content/uploads/2022/11/IMG_20221101_185317.jpg',
                        tag: 'New release',
                        title:
                            'Varisu song Ranjithame’s promo: Vijay turns singer for dance number'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      'For You',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 0,
                          color: appTextTheme),
                    ),
                  ],
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class Chips extends StatefulWidget {
  final String category;
  const Chips({super.key, required this.category});

  @override
  State<Chips> createState() => _ChipsState(category);
}

class _ChipsState extends State<Chips> {
  final String category;

  Color _chipsColor = chipBackColor;
  Color _chipsTxtColor = Colors.black;

  _ChipsState(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: (() {
          setState(() {
            _chipsColor = _chipsColor == appTheme ? chipBackColor : appTheme;
            _chipsTxtColor =
                _chipsTxtColor == Colors.white ? Colors.black : Colors.white;
          });
        }),
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _chipsColor,
          ),
          child: Text(
            category,
            style: GoogleFonts.manrope(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0,
                color: _chipsTxtColor),
          ),
        ),
      ),
    );
  }
}
