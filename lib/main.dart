import 'package:flutter/material.dart';
import 'package:my_movie/screens/login.dart';
import 'package:my_movie/screens/onboardingScreenOne.dart';
import 'package:my_movie/screens/onboardingScreenThree.dart';
import 'package:my_movie/screens/onboardingScreenTwo.dart';
import 'package:my_movie/screens/signup.dart';
import 'package:my_movie/screens/startPage.dart';

void main() {
  runApp(MyMovie());
}

class MyMovie extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      initialRoute: '/startPage',
      routes: {
        '/startPage': (context) => StartPage(),
        '/onboardingOne': (context) => OnboardingScreenOne(),
        '/onboardingTwo': (context) => OnboardingScreenTwo(),
        '/onboardingThree': (context) => OnboardingScreenThree(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}
