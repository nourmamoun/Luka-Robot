
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/screens/HomePage.dart';
import 'package:luka_robot/widgets/BackButton.dart';
import 'package:luka_robot/widgets/TextFieldWidget.dart';
import 'package:firebase_core/firebase_core.dart';

import '../widgets/squaretile.dart';

class RegisterationPage extends StatefulWidget {
  RegisterationPage({super.key,required this.onTap});
   final Function()? onTap;

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  final emaillController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();
  final ParentNameController = TextEditingController();
  final ChildNameController = TextEditingController();
  final ChildAgeController = TextEditingController();

    CollectionReference users = FirebaseFirestore.instance.collection('userData');


void signUserUp() async{

 if (mounted) {
  showDialog(context: context, builder: (context){
     return Center(
       child: CircularProgressIndicator(),
     );
   });
  
   try {
   if (PasswordController.text==ConfirmPasswordController.text) {
   await FirebaseAuth.instance.createUserWithEmailAndPassword(
     email: emaillController.text, 
     password: PasswordController.text);
  
     users.add({
       'ParentName': ParentNameController.text,
       'ChildName': ChildNameController.text,
       'ChildAge': ChildAgeController.text
     });
  }else{
   scaffoldMessages(context, 'Passwords dont match', Colors.red);
  }
     Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
     Navigator.pop(context);
   if(e.code=='weak-password'){
   scaffoldMessages(
         context, 'Password should be at least 6 characters ', Colors.red);
  
   }else if(e.code == 'email-already-in-use'){
     scaffoldMessages(context,
          'Email Already Exsits', Colors.red);
   }
  }
}else{
  print("failed");
}




}


void scaffoldMessages(BuildContext context, String message, Color bgColor ){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: bgColor,
   ) );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const Padding(
                  padding: EdgeInsets.only(left: 24, right: 71, top: 60),
                  child: Text(
                    'Registeration',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: kFontFamilyGraduate,
                        color: Color(kThemeColor),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldWidget(
                  hintText: 'Parent Name',
                  obsecureText: false,
                  controller: ParentNameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 2),
                      child: TextFieldWidget(
                        hintText: 'Child Name',
                        controller: ChildNameController,
                        obsecureText: false,
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 1, left: 30),
                      child: TextFieldWidget(
                        keyboardType: TextInputType.phone,
                        hintText: 'Child Age',
                        controller: ChildAgeController,
                        obsecureText: false,
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  hintText: 'Email',
                  obsecureText: false,
                  controller: emaillController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  hintText: 'Password',
                  obsecureText: false,
                  controller: PasswordController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  hintText: 'Confirm Password',
                  obsecureText: false,
                  controller: ConfirmPasswordController,
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: signUserUp,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 155, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(kThemeColor),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: kFontFamilyUbranist,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Have An Account? ", style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontFamily: kFontFamilyUbranist,
                    fontWeight: FontWeight.w600,
                    
                  ),),


                 const SizedBox(width: 5,),


                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("LogIn", 
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
