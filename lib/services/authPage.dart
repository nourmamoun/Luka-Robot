import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:luka_robot/screens/HomePage.dart';
import 'package:luka_robot/screens/LoginPage.dart';
import 'package:luka_robot/services/loginOrregister.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
          if(snapshot.hasData){
            return HomePage();
          }else{
            return LoginOrRegtiserPage();
          }
        }, 
      ),
    );
  }
}