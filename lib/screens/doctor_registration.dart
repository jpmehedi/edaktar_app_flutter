import 'package:e_daktar/constraints.dart';
import 'package:flutter/material.dart';
import '../components/circular_button.dart';
import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../screens/doctor_otp.dart';
import '../screens/home_doctor.dart';
import '../screens/patient_registration.dart';
import '../screens/terms_condition.dart';

class DoctorRegistration extends StatefulWidget {
  static String id = "DoctorRegistration";
  @override
  _DoctorRegistrationState createState() => _DoctorRegistrationState();
}

class _DoctorRegistrationState extends State<DoctorRegistration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Column(
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
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularButtonBuilder(
                          onPressed: () {},
                          buttonColor: Color(0xffE7E8FC),
                          widget: Image.asset('images/vaadin_doctor.png'),
                          level: 'Doctor',
                          colur: Color(0xff002060),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        CircularButtonBuilder(
                          onPressed: () {
                            Navigator.pushNamed(context, PaientRegistration.id);
                          },
                          buttonColor: Color(0xff00B140),
                          widget: Image.asset('images/medical_outpatient.png'),
                          level: 'Petient',
                          colur: Color(0xff00B140),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Doctor\'s Registration',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        InputFeildBuilder(
                          hintText: 'Doctor\'s Name',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InputFeildBuilder(
                          hintText: 'Phone',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InputFeildBuilder(
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InputFeildBuilder(
                          hintText: 'Confirm Password',
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(value: false, onChanged: (value) {}),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, TermsAndConditions.id);
                              },
                              child: Text(
                                'I Agree with your terms & conditions',
                                style: kTermConditionStyle,
                              ),
                            ),
                          ],
                        ),
                        LongRectangleButton(
                          onPressed: () {
                            Navigator.pushNamed(context, DoctorOTP.id);
                          },
                          buttonText: 'Sign in',
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
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, HomeDoctor.id);
                                },
                                child: Text(
                                  'Log in',
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
