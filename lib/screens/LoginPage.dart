import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/screens/ForgetPassword.dart';
import 'package:luka_robot/screens/HomePage.dart';
import 'package:luka_robot/screens/registerPage.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:luka_robot/widgets/TextFieldWidget.dart';
import 'package:luka_robot/widgets/squaretile.dart';

import '../constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 BackButtonWidget(imagePath: kBackButtonImage)
                 ,
                const Padding(
                  padding: EdgeInsets.only(left: 24, right: 71, top: 20),
                  child: Text(
                    'Glad to see you, again',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: kFontFamilyGraduate,
                      color: Color(kThemeColor),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextFieldWidget(
                  hintText: 'Enter Your Email',
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldWidget(
                  hintText: 'Enter Your Password',
                  obsecureText: true,
                  redEye:const ImageIcon(
                    AssetImage('lib/assets/images/fluent_eye-20-filled.png'),
                    color: Color(0xff6A707C),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgetPassword()));
                      },
                      child: const Text('Forget Password?', style: TextStyle(
                        color: Color(0xFF6A707C),
                        fontFamily: kFontFamilyUbranist,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                        
                      ),),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 160,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                       color: const Color(kThemeColor),
                    ),
                   
                    child: const Text(
                      'LOGIN', style: TextStyle(
                        fontSize: 15,
                        fontFamily: kFontFamilyUbranist,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 35,),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    )),
                  const  Padding(
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
               const SizedBox(height: 20,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have An Account? ", style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontFamily: kFontFamilyUbranist,
                    fontWeight: FontWeight.w600,
                    
                  ),),


                 const SizedBox(width: 5,),


                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterationPage()));
                    },
                    child: const Text("Register Now", 
                    style: TextStyle(
                      color: Color(kThemeColor),
                      fontSize: 15,
                      fontFamily: kFontFamilyUbranist,
                      fontWeight: FontWeight.w600
                    ),),
                  )
                ],
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
