import 'package:flutter/material.dart';
import '../components/circular_button.dart';
import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../constraints.dart';
import '../screens/home_screen.dart';
import '../screens/doctor_registration.dart';
import '../screens/otp_verfication.dart';
import '../screens/terms_condition.dart';

class PaientRegistration extends StatefulWidget {
  static String id = "PaientRegistration";
  @override
  _PaientRegistrationState createState() => _PaientRegistrationState();
}

class _PaientRegistrationState extends State<PaientRegistration> {
  String dropdownGenderValue = 'Gender';
  String dropdownAreaValue = 'Area';
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
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, HomeScreen.id);
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularButtonBuilder(
                          onPressed: () {
                            Navigator.pushNamed(context, DoctorRegistration.id);
                          },
                          buttonColor: Color(0xffE7E8FC),
                          widget: Image.asset('images/vaadin_doctor.png'),
                          level: 'Doctor',
                          colur: Color(0xff002060),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        CircularButtonBuilder(
                          onPressed: () {},
                          buttonColor: Color(0xff00B140),
                          widget: Image.asset('images/medical_outpatient.png'),
                          level: 'Petient',
                          colur: Color(0xff00B140),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Patient\'s Registration',
                    style: TextStyle(
                      color: Color(0xff002060),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        InputFeildBuilder(
                          hintText: 'Name',
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
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color(0xffE7E8FC),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: DropdownButton<String>(
                                    value: dropdownGenderValue,
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 40),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xff00B140),
                                      ),
                                    ),
                                    iconSize: 24,
                                    style: TextStyle(
                                      color: Color(0xff00B140),
                                      fontSize: 16,
                                    ),
                                    underline: Container(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownGenderValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      'Gender',
                                      'Male',
                                      'Female',
                                      'Other'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Container(
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color(0xffE7E8FC),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: DropdownButton<String>(
                                    value: dropdownAreaValue,
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 40),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xff00B140),
                                      ),
                                    ),
                                    iconSize: 24,
                                    style: TextStyle(
                                      color: Color(0xff00B140),
                                      fontSize: 16,
                                    ),
                                    underline: Container(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownAreaValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      'Area',
                                      'Cumilla',
                                      'Dhaka',
                                      'Chandpur'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: InputFeildBuilder(
                                hintText: 'Occopation',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: InputFeildBuilder(
                                hintText: 'Age',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InputFeildBuilder(
                          hintText: 'Prvious Dissices',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xffE7E8FC),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Address',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff5A5A5A),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
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
                            Navigator.pushNamed(context, OTPverification.id);
                          },
                          buttonText: 'Sign in',
                        ),
                        SizedBox(
                          height: 15,
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
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, HomeScreen.id);
                                },
                                child: Text(
                                  'Log In',
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
