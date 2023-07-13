import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/screens/LoginPage.dart';
import 'package:luka_robot/screens/registerPage.dart';

class LoginOrRegtiserPage extends StatefulWidget {
  const LoginOrRegtiserPage({super.key});

  @override
  State<LoginOrRegtiserPage> createState() => _LoginOrRegtiserPageState();
}

class _LoginOrRegtiserPageState extends State<LoginOrRegtiserPage> {
 bool showLoginPage = true;

 //toggle betwen login and register page
 void togglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
 }
 
 @override
  Widget build(BuildContext context) {
   if(showLoginPage){
    return LoginPage(onTap: togglePages);
   }else{
    return RegisterationPage(onTap:  togglePages,);
   }
  }
}