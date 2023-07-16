import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';
import '../widgets/BackButton.dart';

class Categorization extends StatelessWidget {
  const Categorization({super.key});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenContainerWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 14, right: 14, left: 14),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BackButtonWidget(imagePath: kBackButtonImage),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 50, top: 20),
                  child: Text(
                    'YOUR CHILD IS CATEGORIZED',
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: kFontFamilyGraduate,
                        color: Color(kThemeColor),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 110,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 350,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE2E2E2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Player',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Grandstander',
                              fontWeight: FontWeight.w600,
                              color: Color(kThemeColor)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Image.asset('lib/assets/images/image 1 (1).png')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 117,
                ),
                Center(
                  child: Image.asset(
                    kHalfRobot,
                    height: screenHeight*0.34,
                    width: screenContainerWidth*0.8,
                    alignment: Alignment.bottomCenter,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
