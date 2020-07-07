import 'package:flutter/material.dart';


class RoundedButtonBuilder extends StatelessWidget {
  RoundedButtonBuilder({this.icon, this.level, this.colur, this.buttonColor});
  final Icon icon;
  final String level;
  final Color colur;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RawMaterialButton(
            child: icon,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            fillColor: buttonColor,
            constraints: BoxConstraints(minHeight: 60.0, minWidth: 60.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            level,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: colur,
            ),
          ),
        ),
      ],
    );
  }
}
