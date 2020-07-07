import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/patient_sidebar.dart';
import '../components/reuseable_searchbar.dart';
import '../components/doctor_card_builder.dart';
import '../screens/schedule_celender.dart';
import '../screens/doctor_review.dart';
import '../screens/patient_profile.dart';
import '../screens/schedule_setup.dart';

class DoctorList extends StatefulWidget {
  static String id = "DoctorList";
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String dropdownCategoryValue = 'Category';
  String dropdownAreaValue = 'Area';
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
              padding: const EdgeInsets.only(right: 60),
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
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ReuseableSearchBar(
                  hintText: 'Search Doctor\'s Name',
                ),
                SizedBox(
                  height: 10,
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
                            value: dropdownCategoryValue,
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
                                dropdownCategoryValue = newValue;
                              });
                            },
                            items: <String>[
                              'Category',
                              'Male',
                              'Female',
                              'Other'
                            ].map<DropdownMenuItem<String>>((String value) {
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
                              padding: const EdgeInsets.only(left: 30),
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
                            ].map<DropdownMenuItem<String>>((String value) {
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
                Text(
                  '128 Results',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    DoctorCardBuilder(
                      onTap: () {
                        Navigator.pushNamed(context, DoctorReview.id);
                      },
                      onPressedForVisitHour: () {
                        Navigator.pushNamed(context, ScheduleSetup.id);
                      },
                      onPressedForSetAppoinment: () {
                        Navigator.pushNamed(context, ScheduleCelender.id);
                      },
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
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//0xff00B140
