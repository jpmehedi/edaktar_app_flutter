import 'package:flutter/material.dart';
import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../constraints.dart';
import '../screens/doctor_details.dart';
import '../screens/doctor_registration.dart';

class DoctorOTP extends StatefulWidget {
  static String id = "DoctorOTP";
  @override
  _DoctorOTPState createState() => _DoctorOTPState();
}

class _DoctorOTPState extends State<DoctorOTP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, DoctorRegistration.id);
                    },
                    child: Text(
                      'BACK',
                      style: TextStyle(
                        color: Color(0xff00B140),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, DoctorRegistration.id);
                    },
                    child: Container(
                      child: Center(
                        child: Image.asset(
                          'images/app_logo1.png',
                          width: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'OTP verification',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset('images/otp_verification.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Enter OTP code from your phone",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    InputFeildBuilder(
                      hintText: ' ',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LongRectangleButton(
                      onPressed: () {
                        Navigator.pushNamed(context, DoctorDetails.id);
                      },
                      buttonText: 'Confirm',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Resend Code',
                    style: kResendCodeTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
