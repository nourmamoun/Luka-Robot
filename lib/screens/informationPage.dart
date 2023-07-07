import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/widgets/BackButton.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 16, top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              BackButtonWidget(imagePath: kBackButtonImage),
              SizedBox(height: 15,),
                const Text(
                  'who we are',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(kThemeColor),
                      fontWeight: FontWeight.w400,
                      fontFamily: kFontFamilyGraduate),
                ),
                const Text(
                  '\n We are the Altruixers, a team from different departments from faculty of engineering - Mansoura university.\n\n We aim to help Children within age 9-14 years with Attention Deficit Hyperactivity Disorder (ADHD) during their treatment journey by Presenting LUKA robot to them.\n\n Luka, which depends on machine learning & deep learning and implemented camera, will detect if the child is in concentration state or not, happy or sad. And will take the action to complete the task or change it and begin some activities to gain the child focus again. Thanks to speakers and microphones that will be implemented in the robot. This will open the way of doing educational exercises with the child to make him, for instance, repeat a specific word many times and the child repeat the word after him to make sure that the child is pronouncing it in the right way.',
                  style: TextStyle(
                      color: Color(0xFF717171),
                      fontSize: 13,
                      fontFamily: kFontFamilyGraduate,
                      fontWeight: FontWeight.w400,
                      height: 1.4),
                ),
                Image.asset(
                  'lib/assets/images/half a robot 1.png',
                  alignment: Alignment.bottomCenter,
                  height: 260,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
