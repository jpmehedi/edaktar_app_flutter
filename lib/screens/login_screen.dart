import 'package:e_daktar/constraint.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../components/inputfield_builder.dart';
import '../components/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static String id = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color activeColor = Colors.blue;
  final Color inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      Text(
                        "e",
                        style: kElogoTextStyle,
                      ),
                      Text(
                        "Daktar",
                        style: kLogoTextStyle,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('images/card.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          child: Text(
                            "Online Health Care",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 50.0, horizontal: 20.0),
                          child: Text(
                            "24 Hours Service Availavle",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundedButtonBuilder(
                          buttonColor: activeColor,
                          icon: Icon(
                            Icons.person,
                            size: 30,
                          ),
                          level: 'Doctor',
                          colur: activeColor,
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        RoundedButtonBuilder(
                          buttonColor: inactiveColor,
                          icon: Icon(
                            Icons.local_hospital,
                            size: 30,
                          ),
                          level: 'Patient',
                          colur: inactiveColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        InputFeildBuilder(
                          hintText: 'Phone',
                          icon: Icon(Icons.phone),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputFeildBuilder(
                          hintText: 'Password',
                          icon: Icon(Icons.lock),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Forgot Passsword?",
                    style: kNormalTextStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Text(
                        "Login as Doctor",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: kNormalTextStyle,
                        ),
                        FlatButton(
                            onPressed: () {
                              //TODO:Navigate
                            },
                            child: Text(
                              'Sign Up',
                              style: kActiveTextStyle,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
