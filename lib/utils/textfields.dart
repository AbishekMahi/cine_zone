import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      style: GoogleFonts.manrope(
          fontSize: 14, fontWeight: FontWeight.w400, color: appTextTheme),
      cursorColor: appTextTheme,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        // print(value);
      },
      decoration: const InputDecoration(
        // filled: true,
        fillColor: appDarkBack,
        // prefixIcon: Icon(
        //   Icons.arrow_back_ios,
        //   size: 24,
        //   color: appTextTheme,
        // ),
        suffixIcon: Icon(
          EvaIcons.search,
          size: 24,
          color: appTextTheme,
        ),
        focusColor: appTextTheme,
        hintText: "Search movies, news & articles",
        hintStyle: TextStyle(color: Color(0xB7FFFFFF), fontSize: 14),
        border: InputBorder.none,
        // labelText: "Search movies, news & articles",
        labelStyle: TextStyle(color: appTextTheme, fontSize: 14),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
// class _SearchFieldState extends State<SearchField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       style: GoogleFonts.manrope(
//           fontSize: 14, fontWeight: FontWeight.w400, color: appTextTheme),
//       cursorColor: appTextTheme,
//       textInputAction: TextInputAction.search,
//       onSubmitted: (value) {
//         // print(value);
//       },
//       decoration: const InputDecoration(
//         filled: true,
//         // fillColor: Color(0x4AFAFAFA),
//         prefixIcon: Icon(
//           EvaIcons.search,
//           size: 24,
//           color: appTextTheme,
//         ),
//         focusColor: appTextTheme,
//         hintText: "Search movies, news & articles",
//         hintStyle: TextStyle(color: Color(0xB7FFFFFF), fontSize: 14),
//         border: InputBorder.none,
//         // labelText: "Search movies, news & articles",
//         labelStyle: TextStyle(color: appTextTheme, fontSize: 14),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           // borderSide: BorderSide(
//           //   width: 1.5,
//           //   color: appTextTheme,
//           // ),
//         ),
//       ),
//     );
//   }
// }