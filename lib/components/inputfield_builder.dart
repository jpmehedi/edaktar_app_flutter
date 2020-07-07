import 'package:flutter/material.dart';

class InputFeildBuilder extends StatelessWidget {
  InputFeildBuilder({this.hintText, this.icon, this.maxLines});

  final String hintText;
  final Icon icon;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 44,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Color(0xffE7E8FC),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hintText,
          
          hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xff5A5A5A),
              fontSize: 18.0),
        ),
      ),
    );
  }
}
