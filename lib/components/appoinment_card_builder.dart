import 'package:flutter/material.dart';
import '../components/small_button_builder.dart';
import '../constraints.dart';

class AppoinmentCardBuilder extends StatelessWidget {
  AppoinmentCardBuilder({
    @required this.doctorName,
    @required this.id,
    @required this.address,
    @required this.chatPressed,
    @required this.historyButtonPressed,
  });
  final String doctorName;
  final String id;
  final String address;
  final Function chatPressed;
  final Function historyButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffE7E8FC),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      id,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff00B140),
                      ),
                    ),
                    Text(
                      address,
                      style: TextStyle(
                        color: Color(0xff002060),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                child: ClipOval(
                    child: Image.asset(
                  'images/doctor_profile.png',
                  height: 50,
                  width: 50,
                )),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                fillColor: Colors.white,
                constraints: BoxConstraints(minHeight: 60.0, minWidth: 60.0),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                        child: Text(
                          "Schedule:",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                          "05 July 20 at 9.00AM to 10.00AM",
                          style: kWorkingDaysStyle,
                        ),
                  
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SmallButtonBuilder(
                  onPressed: chatPressed,
                  text: 'Chat',
                ),
                SmallButtonBuilder(
                  onPressed: historyButtonPressed,
                  text: 'History & Prscribe',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
