import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/appoinment_card_builder.dart';
import '../components/doctor_sidebar.dart';
import '../screens/chat_screen.dart';
import '../screens/doctor_prescribe.dart';
import '../screens/doctors_profile.dart';

class AppoinmentsDoctor extends StatefulWidget {
  static String id = 'AppoinmentsDoctor';
  @override
  _AppoinmentsDoctorState createState() => _AppoinmentsDoctorState();
}

class _AppoinmentsDoctorState extends State<AppoinmentsDoctor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String chember = 'ChemberList';
  String days = 'Today';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: DoctorSidebar(),
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
                  Navigator.pushNamed(context, DoctorsProfile.id);
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
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Appoinments',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(
                          0xff000000,
                        ),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
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
                              value: chember,
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 20),
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
                                  chember = newValue;
                                });
                              },
                              items: <String>[
                                'ChemberList',
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
                              value: days,
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
                                  days = newValue;
                                });
                              },
                              items: <String>[
                                'Today',
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
                    child: Divider(
                      thickness: 3,
                    ),
                    height: 30,
                  ),
                  AppoinmentCardBuilder(
                    chatPressed: () {
                      Navigator.pushNamed(context, ChatScreen.id);
                    },
                    historyButtonPressed: () {
                      Navigator.pushNamed(context, DoctorPrescribe.id);
                    },
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    id: 'ID#8756345211',
                    address: 'Mirpur-Dhaka, 24 Years, Male, Teacher',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppoinmentCardBuilder(
                    chatPressed: () {},
                    historyButtonPressed: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    id: 'ID#8756345211',
                    address: 'Mirpur-Dhaka, 24 Years, Male, Teacher',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppoinmentCardBuilder(
                    chatPressed: () {},
                    historyButtonPressed: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    id: 'ID#8756345211',
                    address: 'Mirpur-Dhaka, 24 Years, Male, Teacher',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppoinmentCardBuilder(
                    chatPressed: () {},
                    historyButtonPressed: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    id: 'ID#8756345211',
                    address: 'Mirpur-Dhaka, 24 Years, Male, Teacher',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppoinmentCardBuilder(
                    chatPressed: () {},
                    historyButtonPressed: () {},
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    id: 'ID#8756345211',
                    address: 'Mirpur-Dhaka, 24 Years, Male, Teacher',
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
