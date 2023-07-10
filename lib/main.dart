import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luka_robot/constants.dart';
import 'package:luka_robot/screens/startPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Luka',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context) => StartPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/splash_screen.png',
              width: 400,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            SpinKitThreeBounce(
              color: Color(kThemeColor),
              size: 25.0,
            )
          ],
        ),
      ),
    );
  }
}
