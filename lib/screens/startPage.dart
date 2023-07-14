import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/widgets/buttonsWidget.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenContainerWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    padding:  EdgeInsets.only(
                        left: 46, right: 41, bottom: 9),
                    child: Image.asset(
                      altruixLogoPath,
                      width: 303,
                      height: 95,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 44, top: 13, left: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "WELCOME ...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(kThemeColor),
                          fontFamily: kFontFamilyGraduate,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'here is your new ',
                        style: TextStyle(
                          fontFamily: kFontFamilyGraduate,
                          fontSize: 25,
                          color: Color(kThemeColor),
                        ),
                      ),
                      const Text(
                        'friend .. luka',
                        style: TextStyle(
                          fontFamily: kFontFamilyGraduate,
                          fontSize: 25,
                          color: Color(kThemeColor),
                        ),
                      ),
                      Image.asset(
                        kRobotImagePath,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      ButtonWidget(
                        buttonText: 'get started',
                        width: (screenContainerWidth * 0.45),
                      ),
                      ButtonWidget2(buttonText2: 'who we are',
                           width: (screenContainerWidth * 0.45),
),

                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
