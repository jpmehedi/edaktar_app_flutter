import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../components/long_rectangle_button.dart';
import '../components/doctor_card_builder.dart';
import '../screens/patient_payment.dart';
import '../screens/doctor_list.dart';
import '../screens/patient_review.dart';
import '../screens/schedule_setup.dart';

class ScheduleCelender extends StatefulWidget {
  static String id = "ScheduleCelender";
  @override
  _ScheduleCelenderState createState() => _ScheduleCelenderState();
}

class _ScheduleCelenderState extends State<ScheduleCelender> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, DoctorList.id);
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
                        Navigator.popAndPushNamed(context, DoctorList.id);
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
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PatientPayment.id);
                  },
                  child: DoctorCardBuilder(
                    onTap: () {
                      Navigator.pushNamed(context, PatientReview.id);
                    },
                    onPressedForVisitHour: () {
                      Navigator.pushNamed(context, ScheduleSetup.id);
                    },
                    onPressedForSetAppoinment: () {
                      Navigator.pushNamed(context, PatientPayment.id);
                    },
                    doctorName: 'Dr. Abdur Jaman Sakin',
                    designation: 'Assistant Proffessior',
                    title: 'Cardiology',
                    postingHospital:
                        'Chember: Curmitola Medical Hospital & College & Apollo Hospital Dhaka',
                    fee: '500 BDT',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TableCalendar(
                    calendarController: _calendarController,
                  ),
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "05 May 2020",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Doctor Availabile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LongRectangleButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PatientPayment.id);
                  },
                  buttonText: 'Confirm',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
