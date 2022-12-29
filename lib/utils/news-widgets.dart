import 'package:cine_zone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget TrendingContainer({
  required String tag,
  required String title,
  required String poster,
  void Function()? ontouch,
}) {
  return InkWell(
    // borderRadius: BorderRadius.circular(6),
    // splashColor: Colors.blue,
    onTap: ontouch,
    child: Ink(
      width: 280,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CachedNetworkImage(
              height: 150,
              imageUrl: poster,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: buttonBackColor,
            ),
            child: Text(
              tag,
              textAlign: TextAlign.left,
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  color: appTextTheme),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.left,
            maxLines: 2,
            style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0,
                color: appTextTheme),
          ),
          // const SizedBox(
          //   child: Divider(color: Colors.grey),
          // ),
          const SizedBox(
            child: Divider(color: Colors.transparent),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: appTextTheme,
                      backgroundImage: CachedNetworkImageProvider(
                          "http://www.kiruvin.com/images/Kiruvin.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Kiruvin Creations',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.manrope(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 0,
                            color: appTextTheme),
                      ),
                    ),
                  ],
                ),
                Text(
                  '3Hrs ago',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.manrope(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      color: appTextTheme),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget ListNewsContainer({
  required String title,
  required String tag,
  required String poster,
  void Function()? ontouch,
}) {
  return InkWell(
    onTap: ontouch,
    child: Ink(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      // ),
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        children: [
          CachedNetworkImage(
            height: 90,
            width: 90,
            fit: BoxFit.fitHeight,
            imageUrl: poster,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        color: appTextTheme),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: buttonBackColor,
                        ),
                        child: Text(
                          tag,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0,
                              color: appTextTheme),
                        ),
                      ),
                      Text(
                        '3Hrs ago',
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.manrope(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 0,
                            color: appTextTheme),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
