import 'package:cine_zone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton extends StatelessWidget {
  final String btntxt;
  final double? fontSize;
  final void Function() ontouch;

  const SubmitButton({
    Key? key,
    required this.btntxt,
    required this.ontouch,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(appTheme),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            onPressed: ontouch,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                btntxt,
                style: GoogleFonts.manrope(
                    fontSize: fontSize,
                    color: const Color(0xFFffffff),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
