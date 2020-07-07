import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/patient_sidebar.dart';
import '../components/doctor_card_builder.dart';
import '../screens/schedule_celender.dart';
import '../screens/doctor_prescribe.dart';
import '../screens/patient_profile.dart';
import '../screens/patient_review.dart';

class Appoinments extends StatefulWidget {
  static String id = 'Appoinments';
  @override
  _AppoinmentsState createState() => _AppoinmentsState();
}

class _AppoinmentsState extends State<Appoinments> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: NavDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.alignLeft,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, PatientProfile.id);
                },
                child: Container(
                  child: Image.asset(
                    'images/app_logo1.png',
                    width: 200,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.notifications_active,
                size: 28,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Appoinments',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DoctorCardBuilder(
                    onTap: () {
                      Navigator.pushNamed(context, PatientReview.id);
                    },
                    onPressedForVisitHour: () {
                      Navigator.pushNamed(context, DoctorPrescribe.id);
                    },
                    onPressedForSetAppoinment: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    designation: 'Assistant Proffessior',
                    title: 'Cardiology',
                    postingHospital:
                        'Chember: Curmitola Medical Hospital & College & Apollo Hospital Dhaka',
                    fee: '500 BDT',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DoctorCardBuilder(
                    onPressedForVisitHour: () {
                      Navigator.pushNamed(context, ScheduleCelender.id);
                    },
                    onPressedForSetAppoinment: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    designation: 'Assistant Proffessior',
                    title: 'Cardiology',
                    postingHospital:
                        'Chember: Curmitola Medical Hospital & College & Apollo Hospital Dhaka',
                    fee: '500 BDT',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DoctorCardBuilder(
                    onPressedForVisitHour: () {
                      Navigator.pushNamed(context, ScheduleCelender.id);
                    },
                    onPressedForSetAppoinment: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    designation: 'Assistant Proffessior',
                    title: 'Cardiology',
                    postingHospital:
                        'Chember: Curmitola Medical Hospital & College & Apollo Hospital Dhaka',
                    fee: '500 BDT',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
