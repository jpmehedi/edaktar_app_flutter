import 'package:flutter/material.dart';
import '../components/rounded_button.dart';

class AppoinmentDatePicker extends StatefulWidget {
  static String id = "AppoinmentDatePicker";
  @override
  _AppoinmentDatePickerState createState() => _AppoinmentDatePickerState();
}

class _AppoinmentDatePickerState extends State<AppoinmentDatePicker> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Selected  Date"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Dr. Mahinur Islam"),
                            Text("Dr. Mahinur Islam"),
                            Text("Dr. Mahinur Islam"),
                            Text("Dr. Mahinur Islam"),
                          ],
                        ),
                        RoundedButtonBuilder(
                          icon: Icon(Icons.person_add),
                          buttonColor: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
