import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/screens/LoginPage.dart';
import 'package:luka_robot/screens/informationPage.dart';

import '../constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.buttonText});
final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));
        },
        child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  margin: const EdgeInsets.only(right: 21),
                  
                        decoration:const BoxDecoration(
                          color: Color(kThemeColor),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5)
                          )
                        ),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            fontFamily: kFontFamilyGraduate,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
      
                          ),
                        ),
                      ),
      ),
    );
  }
}
class ButtonWidget2 extends StatelessWidget {
  const  ButtonWidget2({super.key,required this.buttonText2});
final String buttonText2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: (){
          
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoPage()));
        },
        child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                   margin: const EdgeInsets.only(left: 22),
      
                  
                        decoration: const BoxDecoration(
                          color: Color(kThemeColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5)
                          )
                        ),
                        child: Text(
                          buttonText2,
                          style: const TextStyle(
                            fontFamily: kFontFamilyGraduate,
                            fontSize: 20,
                            color: Colors.white,
                           fontWeight: FontWeight.bold
      
                          ),
                        ),
                      ),
      ),
    );
  }
}