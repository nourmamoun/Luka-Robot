import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/widgets/BackButton.dart';

class WeeklyFocusedActivity extends StatelessWidget {
  const WeeklyFocusedActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding:const EdgeInsets.all(14),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(imagePath: kBackButtonImage),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 71, top: 20),
                child: Text(
                  'WEEKLY FOCUS REPORT',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: kFontFamilyGraduate,
                      color: Color(kThemeColor),
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Table(
                border: TableBorder.all(
                    width: 1.0,
                    color: const Color(0xffE8ECF4),
                    borderRadius: BorderRadius.circular(5)),
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                         BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 8,
                
                      )
                      ]
                    ),
                    children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('TIME',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: kFontFamilyUbranist,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(
                        'ACTIVITY',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: kFontFamilyUbranist,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ])
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
