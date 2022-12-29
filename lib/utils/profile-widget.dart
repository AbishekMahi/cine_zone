// ignore_for_file: no_logic_in_create_state

import 'package:cine_zone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:extended_image/extended_image.dart';

class ProfileWidget extends StatefulWidget {
  final String url;
  final String name;
  final String age;
  final String category;

  const ProfileWidget(
      {super.key,
      required this.url,
      required this.name,
      required this.age,
      required this.category});

  @override
  State<ProfileWidget> createState() =>
      _ProfileWidgetState(url, name, age, category);
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final String url;
  final String name;
  final String age;
  final String category;

  _ProfileWidgetState(this.url, this.name, this.age, this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerBack,
      ),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 180,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: ExtendedImage.network(
              url,
              fit: BoxFit.cover,
              height: 180,
              width: 140,
              cache: true,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        color: appTextTheme),
                  ),
                  Row(
                    children: [
                      Text(
                        'Age $age',
                        style: GoogleFonts.manrope(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 0,
                            color: appTextTheme),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: buttonBackColor,
                        ),
                        child: Text(
                          category,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0,
                              color: appTextTheme),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Ajay Kumar is a lorem ipsum oof the hdrfer bbx. lorem ipsum oof the gredr. Ajay Kumar is a  ipsum lorem oof the gredr',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: appTextTheme),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(),
                      Expanded(
                        child: MaterialButton(
                          onPressed: (() {}),
                          color: appTheme,
                          child: Text(
                            'See Profile',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.manrope(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
