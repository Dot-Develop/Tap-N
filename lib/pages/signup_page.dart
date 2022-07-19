import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
//  double _deviceWidth;
//  double _deviceHeight;
//
//  FirebaseAuth _auth = FirebaseAuth.instance;
//  String _message;
//  String _verificationId;
//  bool _isSMSsent = false;
//  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//  String userPassword;
//  PhoneNumber userPhoneNum;
//  @override
//  Widget build(BuildContext context) {
//    _deviceWidth = MediaQuery.of(context).size.width;
//    _deviceHeight = MediaQuery.of(context).size.height;
//    return Scaffold(
//      body: Container(
//        width: _deviceWidth,
//        height: _deviceHeight,
//        color: Color(0xffF7F3F1),
//        child: _isSMSsent
//            ? Container()
//            : Column(
//                children: <Widget>[
//                  Container(
//                    decoration: BoxDecoration(
//                      boxShadow: [
//                        BoxShadow(
//                          color: Colors.grey[700],
//                          blurRadius: 6.0,
//                          spreadRadius: 0.2,
//                        ),
//                      ],
//                      color: Color(0xffff867f),
//                      borderRadius: BorderRadius.only(
//                        bottomLeft: Radius.circular(64.0),
//                      ),
//                    ),
//                    height: 280.0,
//                    width: double.infinity,
//                    child: Image.asset(
//                      'assets/maptest.png',
//                      height: 300.0,
//                      width: 300.0,
//                    ),
//                  ),
//                  SizedBox(
//                    height: 56.0,
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(right: 144.0),
//                    child: Text(
//                      'Create account.',
//                      style: TextStyle(
//                        decoration: TextDecoration.none,
//                        color: Colors.black,
//                        fontSize: 22.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    height: 22.0,
//                  ),
//                  Container(
//                    padding: EdgeInsets.all(30.0),
//                    width: _deviceWidth,
//                    height: _deviceHeight * 0.25,
//                    child: textFormFields(),
//                  ),
//                  SizedBox(
//                    height: 100.0,
//                  ),
//                  Container(
//                    margin: EdgeInsets.only(left: 70.0),
//                    height: 120.0,
//                    width: double.infinity,
//                    child: Stack(
//                      children: <Widget>[
//                        Container(
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(44.0),
//                            color: Colors.white,
//                            boxShadow: [
//                              BoxShadow(
//                                offset: Offset(1.2, 1.0),
//                                blurRadius: 7.0,
//                                spreadRadius: 0.2,
//                                color: Colors.grey[400],
//                              ),
//                            ],
//                          ),
//                          height: 40.0,
//                          width: 140.0,
//                          child: FlatButton(
//                            onPressed: () async {
////                        Navigator.pushNamed(context, '/loginPage');
//
//                              if (_formKey.currentState.validate()) {
//                                setState(() {
//                                  _isSMSsent = true;
//                                });
//                                _verifyPhoneNumber();
//                              }
//                            },
//                            child: Text(
//                              'Sign up',
//                              style: TextStyle(
//                                color: Color(0xffff867f),
//                                fontWeight: FontWeight.bold,
//                                fontSize: 18.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          margin: EdgeInsets.only(left: 110.0),
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(44.0),
//                            //  color: Color(0xff3ebbed),
//                            color: Color(0xffff867f),
//                            boxShadow: [
//                              BoxShadow(
//                                offset: Offset(1.5, 1.0),
//                                blurRadius: 7.0,
//                                spreadRadius: 0.2,
//                                color: Colors.grey[400],
//                              ),
//                            ],
//                          ),
//                          height: 40.0,
//                          width: 140.0,
//                          child: FlatButton(
//                            onPressed: () {
//                              Navigator.pushNamed(context, '/loginPage');
//                            },
//                            child: Text(
//                              'Log in',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontWeight: FontWeight.bold,
//                                fontSize: 18.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  SizedBox(
//                    height: 10.0,
//                  ),
//                  Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.only(
//                        topRight: Radius.circular(86.0),
//                      ),
//                      color: Color(0xffff867f),
//                    ),
//                    width: double.infinity,
//                    height: 58.0,
//                    child: Center(
//                      child: Text(
//                        'TotallyAdvancingPeopleNetworking.com',
//                        style: TextStyle(
//                          color: Color(0xffF7F3F1),
//                          fontWeight: FontWeight.bold,
//                          fontSize: 18.0,
//                        ),
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//      ),
//    );
//  }
//
//  textFormFields() {
//    return Form(
//      key: _formKey,
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
////          TextFormField(
////            onChanged: (val) {
////              setState(() {
////                userPhoneNum = val;
////              });
////            },
////            validator: (val) {
////              if (val.isEmpty) {
////                return 'Field is empty!';
////              }
////              return null;
////            },
////            decoration: InputDecoration(
////              prefixIcon: Icon(Icons.phone),
////              labelText: 'Phone Number',
////              hintText: 'Phone Number',
////            ),
////          ),
//          InternationalPhoneNumberInput(
//            autoValidate: true,
//            onInputChanged: (pn) {
//              userPhoneNum = pn;
//            },
//            inputBorder: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(16.0),
//            ),
//          ),
//          SizedBox(
//            height: 10.0,
//          ),
//          TextFormField(
//            onChanged: (val) {
//              setState(() {
//                userPassword = val;
//              });
//            },
//            validator: (val) {
//              if (val.isEmpty) {
//                return 'Field is empty!';
//              }
//              return null;
//            },
//            decoration: InputDecoration(
//              prefixIcon: Icon(Icons.lock),
//              labelText: 'Password',
//              hintText: 'Password',
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
////  Future<void> saveUser() async {
////    final prefs = await SharedPreferences.getInstance();
////    try {
////      await prefs.setString('userPhoneNum', userPhoneNum.phoneNumber);
////      await prefs.setString('userPassword', userPassword);
////    } catch (e) {
////      print(e.message);
////    } finally {
////      print('process done!');
////    }
////  }
//
//  void _verifyPhoneNumber() async {
//    setState(() {
//      _message = '';
//    });
//
//    final PhoneVerificationCompleted verificationCompleted =
//        (AuthCredential phoneAuthCredential) {
//      _auth.signInWithCredential(phoneAuthCredential);
//      setState(() {
//        _message = 'Received phone auth credential: $phoneAuthCredential';
//      });
//    };
//
//    final PhoneVerificationFailed verificationFailed =
//        (AuthException authException) {
//      setState(() {
//        _message =
//            'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}';
//      });
//    };
//
//    final PhoneCodeSent codeSent =
//        (String verificationId, [int forceResendingToken]) async {
//      _verificationId = verificationId;
//    };
//
//    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
//        (String verificationId) {
//      _verificationId = verificationId;
//    };
//
//    _auth.verifyPhoneNumber(
//      phoneNumber: userPhoneNum.phoneNumber,
//      timeout: Duration(seconds: 120),
//      verificationCompleted: verificationCompleted,
//      verificationFailed: verificationFailed,
//      codeSent: codeSent,
//      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
//    );
//  }
//}

  final TextEditingController _smsController = TextEditingController();
  String _message;
  String _verificationId;
  bool _isSMSsent = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  PhoneNumber _phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Sign in'),
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.only(top: 40.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (phoneNumber) {
                    _phoneNumber = phoneNumber;
                  },
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              _isSMSsent
                  ? Container(
                      margin: EdgeInsets.all(12.0),
                      child: TextField(
                        controller: _smsController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          labelText: 'Verification Code',
                          hintText: 'Enter verification code here',
                        ),
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                      ),
                    )
                  : Container(),
              !_isSMSsent
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          _isSMSsent = true;
                        });
                        _verifyPhoneNumber();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Send Verification Code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        _signInWithPhoneNumber();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Verify',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void _verifyPhoneNumber() async {
    setState(() {
      _message = '';
    });

    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential phoneAuthCredential) {
      _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        _message = 'Received phone auth credential: $phoneAuthCredential';
      });
    };

    final PhoneVerificationFailed verificationFailed =
        (AuthException authException) {
      setState(() {
        _message =
            'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}';
      });
    };

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      _verificationId = verificationId;
    };

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      _verificationId = verificationId;
    };

    await _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumber.phoneNumber,
        timeout: const Duration(seconds: 120),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  }

  // Example code of how to sign in with phone.
  void _signInWithPhoneNumber() async {
    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: _verificationId,
      smsCode: _smsController.text,
    );
    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    setState(() {
      if (user != null) {
//        _db.collection('users').document(user.uid).setData({
//          'phoneNumber': user.phoneNumber,
//          'lastSeen': DateTime.now(),
//          'signin_method': user.providerId,
//        });

        _message = 'Successfully signed in, uid: ' + user.uid;
        print(_message);
      } else {
        _message = 'Sign in failed';
      }
    });

    Navigator.pop(context);
  }
}
