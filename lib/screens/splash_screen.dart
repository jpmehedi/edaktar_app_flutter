import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset('images/app_logo1.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Online Health Care From Home',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'arial',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
