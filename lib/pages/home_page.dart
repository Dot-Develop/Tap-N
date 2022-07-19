import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7F3F1),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              height: 400.0,
              width: 400.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Thank You!',
              style: TextStyle(
                  decoration: TextDecoration.none, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
