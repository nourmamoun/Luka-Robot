
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:firebase_database/firebase_database.dart';


class WeeklyFocusedActivity extends StatefulWidget {
  const WeeklyFocusedActivity({super.key});

  @override
  State<WeeklyFocusedActivity> createState() => _WeeklyFocusedActivityState();
}

class _WeeklyFocusedActivityState extends State<WeeklyFocusedActivity> {
  Query dbRef = FirebaseDatabase.instance
      .ref()
      .child('1TqtoCTXI7Xg5h3j38HeEbI5wz-NJOueMs0b8AYeQ1E8/Sheet1');

  Widget TableRowContainer({required Map data}) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: const Color(0xffE8ECF4),
          ),
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 8,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            data['Time'].toString(),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
                color: Color(0xFF666666),
                fontFamily: kFontFamilyUbranist),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: VerticalDivider(
              color: Color(0xffE8ECF4),
              thickness: 1.5,
            ),
          ),
          Text(
            data['Activity'].toString(),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
                color: Color(0xFF666666),
                fontFamily: kFontFamilyUbranist),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14),
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
              columnWidths: {
                0: FixedColumnWidth(245),
              },
              border: TableBorder.all(
                  width: 1.0,
                  color: const Color(0xffE8ECF4),
                  borderRadius: BorderRadius.circular(5)),
              children: [
                TableRow(
                  
                    decoration:
                        BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 8,
                      )
                    ]),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('TIME',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: kFontFamilyUbranist,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'ACTIVITY',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: kFontFamilyUbranist,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
              ],
            ),
            Expanded(
              child: Container(
                child: FirebaseAnimatedList(
                    query: dbRef,
                     itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
                        Map dataInfo = snapshot.value as Map;
                      
                        dataInfo["key"] = snapshot.key;
                      
                        return TableRowContainer(data: dataInfo);
                     }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
