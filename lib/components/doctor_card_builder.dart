import 'package:flutter/material.dart';
import '../components/small_button_builder.dart';
import '../constraints.dart';

class DoctorCardBuilder extends StatelessWidget {
  DoctorCardBuilder({
    @required this.doctorName,
    @required this.designation,
    @required this.title,
    @required this.postingHospital,
    @required this.fee,
    @required this.onPressedForVisitHour,
    @required this.onPressedForSetAppoinment,
    this.onTap,
  });
  final Function onTap;
  final String doctorName;
  final String designation;
  final String title;
  final String postingHospital;
  final String fee;
  final Function onPressedForVisitHour;
  final Function onPressedForSetAppoinment;

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
                      designation,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff002060),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff002060),
                      ),
                    ),
                    Text(
                      postingHospital,
                      style: TextStyle(
                        color: Color(0xff00B140),
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
                          const EdgeInsets.only(top: 10, bottom: 10, right: 30),
                      child: Text(
                        "Working Days",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Mon",
                      style: kWorkingDaysStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Fri",
                      style: kWorkingDaysStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sun",
                      style: kWorkingDaysStyle,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Fee-',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '500 BDT',
                          style: TextStyle(
                            color: Color(0xff00B140),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Row(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star_border, size: 18)
                            ],
                          ),
                          Text(
                            "(Reviews)",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
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
                  onPressed: onPressedForVisitHour,
                  text: 'Visition Hours',
                ),
                SmallButtonBuilder(
                  onPressed: onPressedForSetAppoinment,
                  text: 'Set Appoinment',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
