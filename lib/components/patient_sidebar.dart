import 'package:e_daktar/screens/appoinments.dart';
import 'package:e_daktar/screens/doctor_list.dart';
import 'package:e_daktar/screens/doctor_prescribe_for_patient.dart';
import 'package:e_daktar/screens/edit_profile.dart';
import 'package:e_daktar/screens/patient_payment.dart';
import 'package:e_daktar/screens/patient_profile.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
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
            Navigator.pushNamed(context, DoctorList.id);
          },
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Search Doctor'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PatientProfile.id);
          },
          child: ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Profile'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EditProfile.id);
          },
          child: ListTile(
            leading: Icon(Icons.payment),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PatientPayment.id);
          },
          child: ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Accounts & Payment'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Appoinments.id);
          },
          child: ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Appoinment'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DoctorPrescribeForPatient.id);
          },
          child: ListTile(
            leading: Icon(Icons.add_call),
            title: Text('Prescribe'),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  Navigator.pushNamed(context, HomeScreen.id);
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
