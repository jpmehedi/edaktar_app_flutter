import 'package:flutter/material.dart';

class SmallButtonBuilder extends StatelessWidget {
  SmallButtonBuilder({this.text, @required this.onPressed});
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xff002060), borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
