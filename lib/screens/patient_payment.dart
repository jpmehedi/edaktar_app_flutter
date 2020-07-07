import 'package:flutter/material.dart';

import '../components/long_rectangle_button.dart';
import '../components/doctor_card_builder.dart';
import '../constraints.dart';
import '../screens/new_pateint.dart';
import '../screens/patient_review.dart';
import '../screens/schedule_celender.dart';
import '../screens/schedule_setup.dart';

class PatientPayment extends StatefulWidget {
  static String id = "PatientPayment";
  @override
  _PatientPaymentState createState() => _PatientPaymentState();
}

class _PatientPaymentState extends State<PatientPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, ScheduleCelender.id);
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
                        Navigator.popAndPushNamed(context, ScheduleCelender.id);
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
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.notifications_active,
                      size: 28,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                DoctorCardBuilder(
                  onTap: () {
                    Navigator.pushNamed(context, PatientReview.id);
                  },
                  onPressedForVisitHour: () {
                    Navigator.pushNamed(context, ScheduleSetup.id);
                  },
                  onPressedForSetAppoinment: () {
                    Navigator.popAndPushNamed(context, ScheduleCelender.id);
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
                Center(
                  child: Text(
                    'Payment',
                    style: kPaymentTextStyle,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    InvoiceRowBuilder(
                      data: 'Doctor\'s Fee',
                      amount: '500 BDT',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InvoiceRowBuilder(
                      data: 'eDaktar Charge ',
                      amount: '50 BDT',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InvoiceRowBuilder(
                      data: 'Promo Code #Corona10',
                      amount: '-50 BDT',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InvoiceRowBuilder(
                      data: 'Total Due',
                      amount: '500 BDT',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Payment Method',
                    style: kPaymentTextStyle,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: false,
                          onChanged: (value) {
                            value = true;
                          },
                        ),
                        Text(
                          'Payment for previous balance',
                          style: kCheckboxTextStyle,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: true,
                          onChanged: (value) {
                            value = true;
                          },
                        ),
                        Text(
                          'bKash Payment',
                          style: kCheckboxTextStyle,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: false,
                          onChanged: (value) {
                            value = true;
                          },
                        ),
                        Text(
                          'Debit or Credit Card Payment',
                          style: kCheckboxTextStyle,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: false,
                          onChanged: (value) {
                            value = true;
                          },
                        ),
                        Text(
                          'Nogod Payment',
                          style: kCheckboxTextStyle,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                LongRectangleButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NewPateint.id);
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

class InvoiceRowBuilder extends StatelessWidget {
  InvoiceRowBuilder({this.amount, this.data});
  final String data;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xffE7E8FC),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              amount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
