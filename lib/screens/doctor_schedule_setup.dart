import 'package:flutter/material.dart';
import '../components/long_rectangle_button.dart';
import '../screens/doctor_details.dart';
import '../screens/doctors_profile.dart';
import '../constraints.dart';

class DoctorScheduleSetup extends StatefulWidget {
  static String id = "DoctorScheduleSetup";
  @override
  _DoctorScheduleSetupState createState() => _DoctorScheduleSetupState();
}

class _DoctorScheduleSetupState extends State<DoctorScheduleSetup> {
  String chemberName = 'BSMMU';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                        onTap: () {
                          Navigator.popAndPushNamed(context, DoctorDetails.id);
                        },
                        child: Container(
                          child: Center(
                            child: Image.asset(
                              'images/app_logo1.png',
                              width: 200,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Schedule Setup',
                    style: TextStyle(
                      color: Color(0xff00B140),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffE7E8FC),
                          ),
                          child: Center(
                            child: Text(
                              'Available From',
                              style: TextStyle(
                                color: Color(0xff002060),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffE7E8FC),
                          ),
                          child: Center(
                            child: Text(
                              'Available From',
                              style: TextStyle(
                                color: Color(0xff002060),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5, bottom: 5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Sort By Chember Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Online/ Chember1",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: DropdownButton<String>(
                            value: chemberName,
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
                                chemberName = newValue;
                              });
                            },
                            items: <String>['BSMMU', 'Male', 'Female', 'Other']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Days',
                            style: kScheduleSetupTitleStyle,
                          ),
                          Text(
                            'Visiting Hours',
                            style: kScheduleSetupTitleStyle,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Pateint',
                                style: kScheduleSetupTitleStyle,
                              ),
                              Text(
                                'Ammount',
                                style: kScheduleSetupTitleStyle,
                              )
                            ],
                          )
                        ],
                      ),
                      ScheduleRowBuilder(
                        days: 'Sat',
                        from: 'From',
                        to: 'To',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        clour: Color(0xff002060),
                        days: 'Sun',
                        style: TextStyle(color: Colors.white),
                        from: '7PM',
                        to: '11PM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        days: 'Mon',
                        from: '9AM',
                        to: '11AM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        days: 'Tue',
                        from: '12PM',
                        to: '4PM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        days: 'Tue',
                        from: '12PM',
                        to: '4PM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        clour: Color(0xff002060),
                        days: 'Sun',
                        style: TextStyle(color: Colors.white),
                        from: '7PM',
                        to: '11PM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        clour: Color(0xff002060),
                        days: 'Mon',
                        style: TextStyle(color: Colors.white),
                        from: '7PM',
                        to: '11PM',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ScheduleRowBuilder(
                        days: 'Tue',
                        from: '12PM',
                        to: '4PM',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 44,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE7E8FC),
                        ),
                        child: Center(
                          child: Text(
                            'Specific Visiting Date Monthly/Yearly',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      LongRectangleButton(
                        onPressed: () {
                          Navigator.pushNamed(context, DoctorsProfile.id);
                        },
                        buttonText: 'Save Schedule',
                      )
                    ],
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

class ScheduleRowBuilder extends StatelessWidget {
  ScheduleRowBuilder({this.days, this.from, this.to, this.clour, this.style});
  final String days;
  final String from;
  final String to;
  final Color clour;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            color: clour,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xff002060)),
          ),
          child: Center(
            child: Text(
              days,
              style: style,
            ),
          ),
        ),
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xffE7E8FC),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
              child: Text(
            from,
            style: TextStyle(
              color: Color(0xff002060),
            ),
          )),
        ),
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xffE7E8FC),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
              child: Text(
            to,
            style: TextStyle(color: Color(0xff002060)),
          )),
        ),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xff002060))),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
