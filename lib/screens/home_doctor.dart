import 'package:e_daktar/constraints.dart';
import 'package:flutter/material.dart';
import '../components/inputfield_builder.dart';
import '../components/circular_button.dart';
import '../components/long_rectangle_button.dart';
import '../components/reuseable_searchbar.dart';
import '../screens/doctor_registration.dart';
import '../screens/forget_password.dart';
import '../screens/doctor_list.dart';
import '../screens/appoinments_doctor.dart';
import '../screens/home_screen.dart';

class HomeDoctor extends StatefulWidget {
  static String id = 'HomeDoctor';
  @override
  _HomeDoctorState createState() => _HomeDoctorState();
}

class _HomeDoctorState extends State<HomeDoctor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
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
                  ReuseableSearchBar(
                    onTap: () {
                      Navigator.pushNamed(context, DoctorList.id);
                    },
                    hintText: 'Search Doctor\'s',
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
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.id);
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
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "log in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
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
                          hintText: 'Password',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ForgetPassword.id);
                    },
                    child: Text(
                      'Forget Password?',
                      style: kForgetPasswordTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  LongRectangleButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppoinmentsDoctor.id);
                    },
                    buttonText: 'Go',
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
                          onTap: () {
                            Navigator.pushNamed(context, DoctorRegistration.id);
                          },
                          child: Text(
                            'Sign Up',
                            style: kSignUpTextStyle,
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
