import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tapn/pages/on_boarding_page.dart';
import 'dart:math' as math;

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    goToMain(context);
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffF7F3F1),
            Color(0xffF7F3F1),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200.0,
          ),
          Image.asset(
            'assets/logo.png',
            height: 400.0,
            width: 400.0,
          ),
          SizedBox(
            height: 140.0,
          ),
          Container(
            child: Text(
              'Powered by Tap-N.com',
              style: TextStyle(
                color: Color(0xff42A5FF),
                decoration: TextDecoration.none,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          AnimatedBuilder(
            animation: _controller,
            child: Image.asset(
              'assets/wold.png',
              height: 50.0,
              width: 50.0,
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 1.0 * math.pi,
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }
}

goToMain(context) {
  Timer(
    Duration(seconds: 3),
    () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/onBoardingPage',
        (Route<dynamic> route) => false,
      );
    },
  );
}
