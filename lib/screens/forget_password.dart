import 'package:flutter/material.dart';

import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../screens/otp_verfication.dart';

class ForgetPassword extends StatefulWidget {
  static String id = 'ForgetPassword';
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Image.asset(
                        'images/app_logo1.png',
                        width: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(
                            image: AssetImage('images/card.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 60, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Online Health Care",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "24 Hours Service Availavle",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE7E8FC),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff000000),
                            size: 30,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Search Doctors',
                        hintStyle: TextStyle(
                          color: Color(0xff002060),
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'arial',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Center(
                    child: Text(
                      "Forget Password Setting",
                      style: TextStyle(
                        color: Color(0xff002060),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        InputFeildBuilder(
                          hintText: 'Phone',
                          icon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InputFeildBuilder(
                          hintText: 'New Password',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InputFeildBuilder(
                          hintText: 'Confirm Password',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  LongRectangleButton(
                    onPressed: () {
                      Navigator.pushNamed(context, OTPverification.id);
                    },
                    buttonText: 'Submit',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xff002060),
                            fontFamily: 'arial',
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xff002060),
                              fontFamily: 'arial',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
