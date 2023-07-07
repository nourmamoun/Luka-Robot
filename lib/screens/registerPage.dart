import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:luka_robot/widgets/TextFieldWidget.dart';

import '../widgets/squaretile.dart';

class RegisterationPage extends StatelessWidget {
  const RegisterationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
      child: Padding(padding: const EdgeInsets.all(14), 
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtonWidget(imagePath: kBackButtonImage),

             const Padding(
                  padding: EdgeInsets.only(left: 24, right: 71, top: 20),
                  child: Text(
                    'Registeration',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: kFontFamilyGraduate,
                      color: Color(kThemeColor),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                TextFieldWidget(hintText: 'Parent Name',obsecureText: false,),
                
                const SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 1,right: 2),
                      child: TextFieldWidget(hintText: 'Child Name',obsecureText: false,),
                    )),
                     Expanded(child: Padding(
                      padding: const EdgeInsets.only(right: 1,left: 30),
                      child: TextFieldWidget(hintText: 'Child Age',obsecureText: false,),
                    )),
                  ],
                ),
              const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(hintText: 'Email',obsecureText: false,),

                 const SizedBox(
                  height: 15,
                ),
                 TextFieldWidget(hintText: 'Password',obsecureText: false,),

                 const SizedBox(
                  height: 15,
                ),
                 TextFieldWidget(hintText: 'Confirm Password',obsecureText: false,),

                 const SizedBox(
                  height: 15,
                ),

                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 155,vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color: const Color(kThemeColor),
                  ),
                 
                  child: const Text(
                    'Register', style: TextStyle(
                      fontSize: 15,
                      fontFamily: kFontFamilyUbranist,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      
                    ),
                  ),
                ),

                const SizedBox(height: 50,),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    )),
                   const Padding(
                      padding:  EdgeInsets.symmetric(horizontal:8.0),
                      child: Text(
                        "Or Login With",
                        style: TextStyle(
                          color: Color(0xff6A707C),
                          fontSize: 14,
                          fontFamily: kFontFamilyUbranist,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    )),
                  ],
                ),
              ),

               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SquareTile(ImagePath: 'lib/assets/images/facebook_ic.png'),
                   SquareTile(ImagePath: 'lib/assets/images/google_ic.png'),
                   SquareTile(ImagePath: 'lib/assets/images/cib_apple.png')
               
                  ],
                             ),
               ),

                


          ],
        ),
      ),
      ),
     ),


    );
  }
}