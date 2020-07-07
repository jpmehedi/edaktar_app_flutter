import 'package:flutter/material.dart';

class LongRectangleButton extends StatelessWidget {
  LongRectangleButton({@required this.onPressed, this.buttonText});
  final Function onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff002060),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
