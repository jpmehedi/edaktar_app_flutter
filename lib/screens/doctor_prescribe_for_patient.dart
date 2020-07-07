import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constraints.dart';
import '../components/long_rectangle_button.dart';
import '../components/patient_sidebar.dart';
import '../screens/patient_profile.dart';

class DoctorPrescribeForPatient extends StatefulWidget {
  static String id = 'DoctorPrescribe';
  @override
  _DoctorPrescribeForPatientState createState() =>
      _DoctorPrescribeForPatientState();
}

class _DoctorPrescribeForPatientState extends State<DoctorPrescribeForPatient> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String dropdownAgeValue = 'Age';
  String dropdownGenderValue = 'Gender';
  String dropdownWeightValue = 'Weight';
  String dropdownOccopetionValue = 'Occopetion';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'New Pateint\'s Details',
                      style: kPaymentTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE7E8FC)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Pateint Name (required*)',
                            hintStyle: TextStyle(
                              color: Color(0xff00B140),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
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
                              value: dropdownAgeValue,
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
                                  dropdownAgeValue = newValue;
                                });
                              },
                              items: <String>[
                                'Age',
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
                        width: 10,
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
                              value: dropdownGenderValue,
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 60),
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
                              value: dropdownWeightValue,
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
                                  dropdownWeightValue = newValue;
                                });
                              },
                              items: <String>[
                                'Weight',
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
                        width: 10,
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
                              value: dropdownOccopetionValue,
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
                                  dropdownOccopetionValue = newValue;
                                });
                              },
                              items: <String>[
                                'Occopetion',
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
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE7E8FC)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: 'Write or Select the Symptons',
                            hintStyle: TextStyle(
                              color: Color(0xff00B140),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Medical History',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '(Upload Previous File)',
                        style: TextStyle(color: Color(0xff002060)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.add, size: 50, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Container(
                                    width: 300,
                                    height: 400,
                                    child: Hero(
                                      tag: 'view1',
                                      child: Image.asset(
                                          'images/prescription.jpg'),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Card(
                            elevation: 10,
                            child: Container(
                              width: 120,
                              height: 140,
                              child: Hero(
                                tag: 'view1',
                                child: Image.asset(
                                  'images/prescription.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Container(
                                    width: 300,
                                    height: 400,
                                    child: Hero(
                                      tag: 'view2',
                                      child: Image.asset(
                                          'images/prescription.jpg'),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Card(
                            elevation: 10,
                            child: Container(
                              width: 120,
                              height: 140,
                              child: Hero(
                                tag: 'view2',
                                child: Image.asset(
                                  'images/prescription.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Medical History',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE7E8FC),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '1. Napa Extra 500mg',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '30 Days',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xff002060))),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xff002060))),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xff002060),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Text(
                                    '2 Tablet',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                  Text(
                                    'Before Meal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Comments: Drink milk after taking this ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B140),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE7E8FC),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '2. Finix 20mg',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '30 Days',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xff002060))),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xff002060))),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xff002060),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Text(
                                    '2 Tablet',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                  Text(
                                    'Before Meal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002060),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Comments: Drink milk after taking this ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B140),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE7E8FC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Advice--",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          Text(
                            'Stop Smoking and Take Green Trea',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00B140),
                            ),
                          ),
                          Text(
                            'Visit After 30 days',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00B140),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LongRectangleButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PatientProfile.id);
                    },
                    buttonText: 'Back',
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
