import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/screens/LoginPage.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:luka_robot/widgets/TextFieldWidget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
              BackButtonWidget(imagePath: kBackButtonImage),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 71, top: 20),
                child: Text(
                  'Forget Password?',
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
             const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Don't worry! It occurs. Please enter the email\naddress linked with your account.",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: kFontFamilyUbranist,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF8391A1)
                  ),
                ),
              ),
             const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFieldWidget(hintText: 'Enter Your Email',obsecureText: false,),
              ),
             const SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 135,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                       color: const Color(kThemeColor),
                    ),
                   
                    child: const Text(
                      'Send Code', style: TextStyle(
                        fontSize: 15,
                        fontFamily: kFontFamilyUbranist,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
               )
               ,
              const  SizedBox(height: 20,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Remember Password? ", style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontFamily: kFontFamilyUbranist,
                    fontWeight: FontWeight.w600,
                    
                  ),),


                const  SizedBox(width: 5,),


                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: const Text("Login", 
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
      )),
    );
  }
}
