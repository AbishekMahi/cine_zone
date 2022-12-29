import 'package:cine_zone/screens/home-page.dart';
import 'package:cine_zone/utils/constants.dart';
import 'package:cine_zone/utils/profile-widget.dart';
import 'package:cine_zone/utils/textfields.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSearch extends StatefulWidget {
  const MainSearch({super.key});

  @override
  State<MainSearch> createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appDarkBack,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Expanded(child: SearchField()),
          toolbarHeight: 60,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(children: const [
              SizedBox(
                height: 70,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
