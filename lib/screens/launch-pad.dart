import 'package:cine_zone/screens/home-page.dart';
import 'package:cine_zone/utils/constants.dart';
import 'package:cine_zone/utils/profile-widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchPad extends StatefulWidget {
  const LaunchPad({super.key});

  @override
  State<LaunchPad> createState() => _LaunchPadState();
}

class _LaunchPadState extends State<LaunchPad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBack,
      appBar: AppBar(
        backgroundColor: appDarkBack,
        elevation: 0,
        toolbarHeight: 100,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                const Icon(
                  Icons.rocket_launch_outlined,
                  size: 25,
                  color: appTextTheme,
                ),
                const SizedBox(width: 5),
                Text(
                  'Launch Pad',
                  style: GoogleFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      color: appTextTheme),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: Row(
                  children: const [
                    Chips(category: 'All'),
                    Chips(category: 'Actress'),
                    Chips(category: 'Actor'),
                    Chips(category: 'Photographer'),
                    Chips(category: 'Editors'),
                    Chips(category: 'Cinematographer'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(children: [
              Text(
                'Find the new talents, for your next project here.',
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: appTextTheme),
              ),
              const ProfileWidget(
                name: 'Ajay Kumar',
                age: '32',
                category: 'Actor',
                url:
                    'https://media.istockphoto.com/id/930163774/photo/portrait-of-young-man-posing-with-beard-in-suit.jpg?s=612x612&w=0&k=20&c=UrdB_srJz6yf1Xv_L1_tXTNFaRfDBA9tFbDcwi-jlAo=',
              ),
              const ProfileWidget(
                name: 'Sanjana',
                age: '22',
                category: 'Actress',
                url:
                    'https://i.pinimg.com/originals/98/45/46/98454688f98b1e17f487f56954de1239.jpg',
              ),
              const ProfileWidget(
                name: 'Kumar',
                age: '24',
                category: 'Photographer',
                url:
                    'https://thumbs.dreamstime.com/b/indian-man-photographer-digital-camera-photography-profession-people-concept-happy-over-grey-background-159460682.jpg',
              ),
              const ProfileWidget(
                name: 'Rahul',
                age: '23',
                category: 'Actor',
                url:
                    'https://e1.pxfuel.com/desktop-wallpaper/918/1016/desktop-wallpaper-75-male-model-india-thumbnail.jpg',
              ),
              const ProfileWidget(
                name: 'Harshata',
                age: '22',
                category: 'Actress',
                url:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgV7GxkXJzLZoOnp4FY0E3pgpzJxWbypHuAlG2NlK0tDgD-pxtcvvI2ar3-gHu5kJ58y4&usqp=CAU',
              ),
              const ProfileWidget(
                name: 'Harshata',
                age: '22',
                category: 'Actress',
                url:
                    'https://i.pinimg.com/originals/98/45/46/98454688f98b1e17f487f56954de1239.jpg',
              ),
              const ProfileWidget(
                name: 'Ajay Kumar',
                age: '32',
                category: 'Actor',
                url:
                    'https://media.istockphoto.com/id/930163774/photo/portrait-of-young-man-posing-with-beard-in-suit.jpg?s=612x612&w=0&k=20&c=UrdB_srJz6yf1Xv_L1_tXTNFaRfDBA9tFbDcwi-jlAo=',
              ),
              const ProfileWidget(
                name: 'Sanjana',
                age: '22',
                category: 'Actress',
                url:
                    'https://i.pinimg.com/originals/98/45/46/98454688f98b1e17f487f56954de1239.jpg',
              ),
              const SizedBox(
                height: 70,
              )
            ])
          ],
        ),
      ),
    );
  }
}
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: containerBack,
              //   ),
              //   margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              //   height: 180,
              //   child: Row(
              //     children: [
              //       ClipRRect(
              //         borderRadius: const BorderRadius.only(
              //             topLeft: Radius.circular(10),
              //             bottomLeft: Radius.circular(10)),
              //         child: ExtendedImage.network(
              //           'https://i.pinimg.com/originals/98/45/46/98454688f98b1e17f487f56954de1239.jpg',
              //           fit: BoxFit.cover,
              //           height: 180,
              //           width: 140,
              //           cache: true,
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Sanjana',
              //               style: GoogleFonts.manrope(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w600,
              //                   height: 0,
              //                   color: appTextTheme),
              //             ),
              //             Container(
              //               margin: const EdgeInsets.symmetric(vertical: 5),
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5, horizontal: 10),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(30),
              //                 color: buttonBackColor,
              //               ),
              //               child: Text(
              //                 'Actress',
              //                 textAlign: TextAlign.left,
              //                 style: GoogleFonts.manrope(
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.w600,
              //                     height: 0,
              //                     color: appTextTheme),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              