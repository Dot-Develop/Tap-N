import 'package:flutter/material.dart';

import 'package:tapn/pages/home_page.dart';
import 'package:tapn/pages/login_page.dart';
import 'package:tapn/pages/on_boarding_page.dart';
import 'package:tapn/pages/signup_page.dart';
import 'package:tapn/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap-N',
      home: SplashPage(),
      initialRoute: '/splashPage',
      routes: {
        '/splashPage': (context) => SplashPage(),
        '/onBoardingPage': (context) => OnBoardingPage(),
        '/homePage': (context) => HomePage(),
        '/signupPage': (context) => SignupPage(),
        '/loginPage': (context) => LoginPage(),
      },
    );
  }
}
