import 'package:flutter/material.dart';
import '../components/inputfield_builder.dart';
import '../components/long_rectangle_button.dart';
import '../screens/doctor_schedule_setup.dart';

class DoctorDetails extends StatefulWidget {
  static String id = 'DoctorDetails';
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  String title = 'Title';
  String gender = 'Gender';
  String speciality = 'Speciality';
  String sector = 'Sector';
  String area = 'Area';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Image.asset(
                        'images/app_logo1.png',
                        width: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Edit Doctor\'s Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                        child: Image.asset('images/vaadin_doctor.png'),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Upload Your Photo',
                        style: TextStyle(
                          color: Color(0xff00B140),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      InputFeildBuilder(
                        hintText: 'Dr. Asadur Rahman Rakin',
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
                                  value: title,
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
                                      title = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Title',
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
                                  value: gender,
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
                                      gender = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Gender',
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Fee',
                                        hintStyle:
                                            TextStyle(color: Color(0xff00B160)),
                                        border: InputBorder.none),
                                  ),
                                )),
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'BMDC No',
                                        hintStyle:
                                            TextStyle(color: Color(0xff00B160)),
                                        border: InputBorder.none),
                                  ),
                                )),
                          ),
                        ],
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
                                  value: speciality,
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
                                      speciality = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Speciality',
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
                                  value: sector,
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
                                      sector = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Sector',
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Experience(Time)',
                                        hintStyle:
                                            TextStyle(color: Color(0xff00B160)),
                                        border: InputBorder.none),
                                  ),
                                )),
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
                                  value: area,
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
                                      area = newValue;
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
                        hintText: 'Degree',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InputFeildBuilder(
                        hintText: 'Education Institution Name',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InputFeildBuilder(
                        hintText: 'Hospital/ Chamber-1 Address',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InputFeildBuilder(
                        hintText: 'Chamber-2 Address (Optional)',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InputFeildBuilder(
                        hintText: 'Contact Details (Optional)',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  LongRectangleButton(
                    onPressed: () {
                      Navigator.pushNamed(context, DoctorScheduleSetup.id);
                    },
                    buttonText: 'Save',
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
