
import 'package:flutter/material.dart';
import '../components/doctor_card_builder.dart';
import '../components/small_button_builder.dart';
import '../screens/appoinments.dart';
import '../screens/doctors_profile.dart';

class DoctorReview extends StatefulWidget {
  static String id = 'DoctorReview';
  @override
  _DoctorReviewState createState() => _DoctorReviewState();
}

class _DoctorReviewState extends State<DoctorReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, Appoinments.id);
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
                          Navigator.pushNamed(context, DoctorsProfile.id);
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
                        width: 30,
                      ),
                      Icon(
                        Icons.notifications_active,
                        size: 28,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DoctorCardBuilder(
                    onPressedForVisitHour: () {},
                    onPressedForSetAppoinment: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    designation: 'Assistant Proffessior',
                    title: 'Cardiology',
                    postingHospital:
                        'Chember: Curmitola Medical Hospital & College & Apollo Hospital Dhaka',
                    fee: '500 BDT',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: Color(0xff002060),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Thank You Doctor You are good"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                            Text("The doctor is very gentle and well behabe"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("I am very happy this treatment"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Should increse the the timing of taking"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Good"),
                      ),
                    ),
                  ),
                  SizedBox(                                                      
                    height: 20,
                  ),
                  SmallButtonBuilder(
                    onPressed: () {
                      Navigator.pushNamed(context, DoctorsProfile.id);
                    },
                    text: 'Back',
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
