import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:nice_intro/nice_intro.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<IntroScreen> pages = [
    IntroScreen(
      headerPadding: EdgeInsets.all(85.0),
      title: 'Cartoon Creator',
      imageAsset: 'assets/carrr.png',
      description: 'Create your cartoon to begin interacting!',
      headerBgColor: Color(0xff494949),
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(64.0),
      title: 'Story Mode',
      headerBgColor: Color(0xff3b8cff),
      imageAsset: 'assets/boook.png',
      description:
          'Instead of the regular timeline or story modes, in our app, your life becomes your story! TapN to You!',
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(60.0),
      title: 'Biometric Security',
      headerBgColor: Color(0xffff867f),
      imageAsset: 'assets/fingerss.png',
      description:
          "Our sign in methods include fingerprint and facial recognition! This greatly improves our security.",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(75.0),
      title: 'Different Modes',
      headerBgColor: Color(0xff494949),
      imageAsset: 'assets/crowdd.png',
      description: "Solo, Friend, Matching, Crowded Event and Suggestion Mode.",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(85.0),
      title: 'Mobile Wallet',
      headerBgColor: Color(0xff3b8cff),
      imageAsset: 'assets/wallteSYS.png',
      description:
          "Enjoy our mobile wallet options, every transaction, made easier!",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(22.0),
      title: 'QR Code ',
      headerBgColor: Color(0xffff867f),
      imageAsset: 'assets/qrcode.png',
      description:
          "In combination with our Mobile Wallet, we use QR code for your identification, payment, or business needs! All-in-one platform. For use in restaurants, bars, clubs or ticket events! Easily identify your ticket information, age, mobile wallet limits and more!",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(22.0),
      title: 'Kids want to play too!',
      headerBgColor: Color(0xff494949),
      imageAsset: 'assets/kidmode.png',
      description:
          "Stay tuned for our \"Kid mode.\" With QR options to help you keep any eye out, even when you aren't around.",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    IntroScreen(
      headerPadding: EdgeInsets.all(22.0),
      title: 'See you soon!',
      headerBgColor: Color(0xff3b8cff),
      imageAsset: 'assets/seeU.png',
      description:
          "Check back soon for more updates! Investments, Partnerships, Donors, welcome. Help us change the world! Also visit: Totallyadvancingpeoplenetworking.com Or Email any questions about opportunities, careers, etc. Join our ever growing work force! haydenlimes@totallyadvancingpeoplenetworking.com",
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
//    IntroScreen(
//      headerPadding: EdgeInsets.all(22.0),
//      title: 'Maps',
//      headerBgColor: Color(0xffE53935),
//      imageAsset: '',
//      description:
//          "Green dots: Nature; Parks, Walking Trails, Bike Paths, State Parks, Nature Trails. Blue dots: Showtime Media; Concerts, Movie Theatre's, Comedy Clubs etc. Purple dots: Food and Drink, Bar n Grill, Restaurants, Clubs, Ice Cream Shops, etc. Live categories!!  Red: The most popular nearby you. Yellow: Our favorite. The hidden gems, hole in the walls, unheard of treasures, locally known, internationally a secret! Almost like grandma's cookbook. Orange: Caution Areas",
//      textStyle: TextStyle(
//        decoration: TextDecoration.none,
//        fontSize: 13.0,
//        fontWeight: FontWeight.normal,
//        color: Colors.black,
//      ),
//    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntroScreens(
        textColor: Colors.black,
        physics: BouncingScrollPhysics(),
        footerBgColor: Color(0xffF7F3F1),
        footerRadius: 18.0,
        slides: pages,
        activeDotColor: Colors.black,
        onDone: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/homePage', (Route<dynamic> route) => false);
        },
        onSkip: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/homePage', (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
