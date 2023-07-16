import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';

class HomePageButtons extends StatelessWidget {
   HomePageButtons({super.key, required this.text,required this.ontap});
String text;
final ontap;

  @override
  Widget build(BuildContext context) {
    final screenContainerWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: screenContainerWidth*0.9,
          padding:const EdgeInsets.symmetric(horizontal: 90,vertical: 20),
          // width: 400,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color:const Color(0xffE2E2E2)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset:const Offset(0, 3), // changes position of shadow
              ),
        ],
          ),
          child: Text(text, style:const TextStyle(
            fontSize: 15,
            fontFamily: kFontFamilyUbranist,
            fontWeight: FontWeight.w600,
            color: Color(0xFF8391A1)
          ),
          textAlign: TextAlign.center
          
          
          ),
        ),
      ),
    );
  }
}