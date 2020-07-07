import 'package:flutter/material.dart';
import '../constraints.dart';
import '../components/long_rectangle_button.dart';
import '../screens/doctors_profile.dart';

class DoctorPayment extends StatefulWidget {
  static String id = 'DoctorPayment';
  @override
  _DoctorPaymentState createState() => _DoctorPaymentState();
}

class _DoctorPaymentState extends State<DoctorPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
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
                          Navigator.pushNamed(context, DoctorsProfile.id);
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
                    height: 20,
                  ),
                  Text(
                    'Accounts & Payment',
                    style: TextStyle(
                      color: Color(0xff002060),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Dr. Mehedi Hasan Nirob',
                            style: TextStyle(
                              color: Color(0xff002060),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '#ID - 137246381729',
                            style: TextStyle(
                              color: Color(0xff002060),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      ClipOval(
                        child: Image.asset(
                          'images/doctor_profile.png',
                          height: 60,
                          width: 60,
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
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: <Widget>[
                        DataTable(
                          columnSpacing: 10,
                          columns: [
                            DataColumn(
                                label: Text('No.', style: kDataTableTagStyle)),
                            DataColumn(
                                label: Text('Date', style: kDataTableTagStyle)),
                            DataColumn(
                                label: Text('Patient ID',
                                    style: kDataTableTagStyle)),
                            DataColumn(
                                label: Text('Fee', style: kDataTableTagStyle)),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text('1', style: kDataTableDataStyle)),
                                DataCell(Text('02-05-2020',
                                    style: kDataTableDataStyle)),
                                DataCell(Text('7463452412',
                                    style: kDataTableDataStyle)),
                                DataCell(
                                    Text('500', style: kDataTableDataStyle)),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('2', style: kDataTableDataStyle)),
                                DataCell(Text('02-05-2020',
                                    style: kDataTableDataStyle)),
                                DataCell(Text('7463452412',
                                    style: kDataTableDataStyle)),
                                DataCell(
                                    Text('500', style: kDataTableDataStyle)),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('3', style: kDataTableDataStyle)),
                                DataCell(Text('02-05-2020',
                                    style: kDataTableDataStyle)),
                                DataCell(Text('7463452412',
                                    style: kDataTableDataStyle)),
                                DataCell(
                                    Text('500', style: kDataTableDataStyle)),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(Text('3', style: kDataTableDataStyle)),
                                DataCell(Text('02-05-2020',
                                    style: kDataTableDataStyle)),
                                DataCell(Text('7463452412',
                                    style: kDataTableDataStyle)),
                                DataCell(
                                    Text('500', style: kDataTableDataStyle)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Net Amount',
                                style: kDataTableDataStyle,
                              ),
                              Text(
                                '20050',
                                style: kDataTableDataStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Promo #Corona',
                                style: kDataTableDataStyle,
                              ),
                              Text(
                                '-1000',
                                style: kDataTableDataStyle,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE7E8FC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Total Due',
                            style: kDataTableDataStyle,
                          ),
                          Text(
                            '-1000',
                            style: kDataTableDataStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment Release Method',
                      style: TextStyle(
                        color: Color(0xff002060),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
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
                      Navigator.pushNamed(context, DoctorsProfile.id);
                    },
                    buttonText: 'Confirm',
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
