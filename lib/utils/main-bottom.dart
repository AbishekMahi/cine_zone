import 'package:cine_zone/screens/all-news.dart';
import 'package:cine_zone/screens/bookmarks.dart';
import 'package:cine_zone/screens/launch-pad.dart';
import 'package:cine_zone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/home-page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int pageNum = 0;
  final screens = [
    const HomePage(),
    const AllNews(),
    const LaunchPad(),
    const Bookmarks(),
  ];

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.exit_to_app,
                size: 35,
              ),
              title: Text(
                'Are you sure you want to exit?',
                style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    color: Colors.black87),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () => Navigator.of(context).pop(false),
                        child: Ink(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: appTheme,
                          ),
                          child: Text(
                            'NO',
                            style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 0,
                                color: appTextTheme),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () => Navigator.of(context).pop(true),
                        child: Ink(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0x28424242)),
                          child: Text(
                            'YES',
                            style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 0,
                                color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: MaterialApp(
        title: 'Cini Buff',
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            extendBody: true,
            body: screens[pageNum],
            bottomNavigationBar: CurvedNavigationBar(
              index: pageNum,
              backgroundColor: appDarkBack,
              color: appTheme,
              height: 60,
              animationDuration: const Duration(milliseconds: 300),
              items: const <Widget>[
                Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  // Icons.newspaper_outlined,
                  Icons.explore_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.rocket_launch_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.bookmark_outline_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ],
              onTap: (index) => setState(() => pageNum = index),
            ),
          ),
        ),
      ),
    );
  }
}
