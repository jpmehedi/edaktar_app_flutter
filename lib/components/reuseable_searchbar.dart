import 'package:flutter/material.dart';

class ReuseableSearchBar extends StatelessWidget {
  ReuseableSearchBar({this.hintText, this.onTap});
  final String hintText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffE7E8FC),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Padding(
            padding: EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: onTap,
                          child: Icon(
                Icons.search,
                color: Color(0xff000000),
                size: 30,
              ),
            ),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xff002060),
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
            fontFamily: 'arial',
          ),
        ),
      ),
    );
  }
}
