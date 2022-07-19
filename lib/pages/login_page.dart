import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _deviceWidth;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        color: Color(0xffF7F3F1),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[700],
                    blurRadius: 6.0,
                    spreadRadius: 0.2,
                  ),
                ],
                color: Color(0xff494949),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64.0),
                ),
              ),
              height: 280.0,
              width: double.infinity,
              child: Image.asset('assets/finnn.png'),
            ),
            SizedBox(
              height: 56.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 144.0),
              child: Text(
                'Welcome back!',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              width: _deviceWidth,
              height: _deviceHeight * 0.25,
              child: textFormFields(),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 70.0),
              height: 120.0,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1.2, 1.0),
                          blurRadius: 7.0,
                          spreadRadius: 0.2,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    height: 40.0,
                    width: 140.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/homePage',
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xff494949),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.0),
                      color: Color(0xff494949),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1.5, 1.0),
                          blurRadius: 7.0,
                          spreadRadius: 0.2,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    height: 40.0,
                    width: 140.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signupPage');
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(86.0),
                ),
                color: Color(0xff494949),
              ),
              width: double.infinity,
              height: 58.0,
              child: Center(
                  child: Text(
                'TotallyAdvancingPeopleNetworking.com',
                style: TextStyle(
                  color: Color(0xffF7F3F1),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }

  textFormFields() {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: 'Phone Number',
              hintText: 'Phone Number',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
              hintText: 'Password',
            ),
          ),
        ],
      ),
    );
  }
}
