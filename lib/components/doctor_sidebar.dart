import '../screens/appoinments_doctor.dart';
import '../screens/doctor_details.dart';
import '../screens/doctor_payment.dart';
import '../screens/doctor_review.dart';
import '../screens/doctor_schedule_setup.dart';
import '../screens/doctors_profile.dart';

import '../screens/home_doctor.dart';
import 'package:flutter/material.dart';

class DoctorSidebar extends StatelessWidget {
  const DoctorSidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(
              'images/header.png',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: ClipOval(
                child: Image.asset(
                  'images/doctor_profile.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 90),
              child: Text(
                'Dr. Mehedi Hasan Nirob',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 120),
              child: Text(
                'ID#6543214567',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DoctorsProfile.id);
          },
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DoctorDetails.id);
          },
          child: ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, DoctorScheduleSetup.id);
          },
          child: ListTile(
            leading: Icon(Icons.payment),
            title: Text('Edit Schedule'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DoctorPayment.id);
          },
          child: ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Accounts & Payment'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DoctorReview.id);
          },
          child: ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Reviews'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppoinmentsDoctor.id);
          },
          child: ListTile(
            leading: Icon(Icons.add_call),
            title: Text('Appoinment'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/facebook.png'),
                  Image.asset('images/youtube.png'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              color: Color(0xff002060),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomeDoctor.id);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
