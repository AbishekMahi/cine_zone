import 'package:cine_zone/utils/buttons.dart';
import 'package:cine_zone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/main-bottom.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 470,
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.fitHeight),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xC607070E), appDarkBackBottom],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cine Buff',
                      style: GoogleFonts.manrope(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          height: 0,
                          color: appTextTheme),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text(
                        'Lorem ipsum kert derst gaesd coma desgn ipsum kert derst gaesd coma desgn.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 0,
                            color: appTextTheme),
                      ),
                    ),
                  ],
                ),
                SubmitButton(
                  btntxt: 'Get Started',
                  fontSize: 20,
                  ontouch: (() {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MainPage()),
                        (route) => true);
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
