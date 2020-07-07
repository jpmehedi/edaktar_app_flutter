import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/patient_sidebar.dart';
import '../components/reuseable_card.dart';
import '../components/reuseable_searchbar.dart';
import '../screens/appoinments.dart';
import '../screens/doctor_list.dart';
import '../screens/doctor_prescribe_for_patient.dart';

class PatientProfile extends StatefulWidget {
  static String id = "PatientProfile";
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
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
              child: Container(
                child: Image.asset(
                  'images/app_logo1.png',
                  width: 200,
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
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mehedi Hasan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'ID# 1394342025',
                                style: TextStyle(
                                  color: Color(0xff00B140),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '26 Years old, Male',
                                style: TextStyle(
                                  color: Color(0xff00B140),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          ClipOval(
                            child: Image.asset(
                              'images/doctor_profile.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE7E8FC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'Contact',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '+880-1790180825',
                              style: TextStyle(
                                color: Color(0xff00B140),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Block-D, Road 19/A, House# 221/2, Mirpur-10, Dhaka-1276',
                              style: TextStyle(
                                color: Color(0xff00B140),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReuseableSearchBar(
                      onTap: () {
                        Navigator.pushNamed(context, DoctorList.id);
                      },
                      hintText: 'Search Doctor\'s Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ReuseableCard(
                              onTap: () {
                                Navigator.pushNamed(context, Appoinments.id);
                              },
                              hedding: 'Appoinment ',
                              title: 'Schedules',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ReuseableCard(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, DoctorPrescribeForPatient.id);
                              },
                              hedding: 'Recent',
                              title: 'Prescription',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            ReuseableCard(
                              onTap: () {},
                              hedding: 'COVID-19 ',
                              title: 'Information',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ReuseableCard(
                              onTap: () {},
                              hedding: 'Others',
                              title: 'Information',
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
