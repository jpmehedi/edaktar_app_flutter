import 'package:e_daktar/screens/appoinments.dart';
import 'package:flutter/material.dart';
import '../components/doctor_card_builder.dart';
import '../components/small_button_builder.dart';

class PatientReview extends StatefulWidget {
  static String id = 'PatientReview';
  @override
  _PatientReviewState createState() => _PatientReviewState();
}

class _PatientReviewState extends State<PatientReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                        onTap: () {},
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
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Write Your Review',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff5A5A5A),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        SmallButtonBuilder(
                          onPressed: () {
                            Navigator.pushNamed(context, Appoinments.id);
                          },
                          text: 'Confirm',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReviewCardBuilder(
                    child: Text('Thank You Doctor Are You Good'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReviewCardBuilder(
                    child: Text('Thank You Doctor Are You Good'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReviewCardBuilder(
                    child: Text('Thank You Doctor Are You Good'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReviewCardBuilder(
                    child: Text('Thank You Doctor Are You Good'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReviewCardBuilder(
                    child: Text('Thank You Doctor Are You Good'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SmallButtonBuilder(
                    onPressed: () {
                      Navigator.pushNamed(context, Appoinments.id);
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

class ReviewCardBuilder extends StatelessWidget {
  const ReviewCardBuilder({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffE7E8FC),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      ),
    );
  }
}
