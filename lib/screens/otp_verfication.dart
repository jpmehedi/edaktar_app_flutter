
import 'package:flutter/material.dart';
import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../screens/patient_profile.dart';
import '../screens/patient_registration.dart';

class OTPverification extends StatefulWidget {
  static String id = "OTPverification";
  @override
  _OTPverificationState createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
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
                      Navigator.pop(context);
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
                      Navigator.popAndPushNamed(context, PaientRegistration.id);
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
                        Navigator.pushNamed(context, PatientProfile.id);
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
                    style: TextStyle(
                      color: Color(0xff002060),
                      fontFamily: 'arial',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
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
}
