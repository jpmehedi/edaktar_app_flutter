import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../components/patient_sidebar.dart';
import '../screens/patient_profile.dart';

class EditProfile extends StatefulWidget {
  static String id = "EditProfile";
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String dropdownGenderValue = 'Gender';
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PatientProfile.id);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
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
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Column(
                children: <Widget>[
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipOval(
                    child: Image.asset(
                      'images/doctor_profile.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Text(
                    'Upload Your Photo',
                    style: TextStyle(
                        color: Color(0xff00B140),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
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
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: InputFeildBuilder(
                                hintText: 'Phone',
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
                        SizedBox(
                          height: 8,
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
                        InputFeildBuilder(
                          hintText: 'Occopetion',
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
                            maxLines: 4,
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
                          height: 50,
                        ),
                        LongRectangleButton(
                          onPressed: () {
                            Navigator.pushNamed(context, PatientProfile.id);
                          },
                          buttonText: 'Save',
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
