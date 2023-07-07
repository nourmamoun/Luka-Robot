import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/screens/Categorization.dart';
import 'package:luka_robot/screens/mostFocusedActivity.dart';
import 'package:luka_robot/screens/weeklyFocusedActivity.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:luka_robot/widgets/homePageButtons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackButtonWidget(imagePath: kBackButtonImage),
                     const Padding(
                  padding: EdgeInsets.only(left: 24, right: 40, top: 20),
                  child: Text(
                    'CHOOSE WHAT YOU WANT TO KNOW ABOUT YOUR CHILD',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: kFontFamilyGraduate,
                      color: Color(kThemeColor),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                
                HomePageButtons(text: 'WEEKLY FOCUS REPORT ',ontap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const WeeklyFocusedActivity()));
                },),
                const SizedBox(
                  height: 30,
                ),
                 HomePageButtons(text: 'FOCUSED ACTIVITY ',ontap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MostFocusedActivity()));
                 },),
                const SizedBox(
                  height: 30,
                ),HomePageButtons(text: 'YOUR CHILD CATEGORY ',ontap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Categorization()));
                },),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(kHalfRobot,height: 250,),
               



                  ],
                ),
              ),
            )
          ),

    );
  }
}