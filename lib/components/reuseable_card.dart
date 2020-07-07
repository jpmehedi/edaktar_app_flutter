import 'package:flutter/material.dart';
import '../constraints.dart';


class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.title, this.hedding, @required this.onTap});
  final String hedding;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xff002060)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                hedding,
                style: kReuseableCardStyle,
              ),
              Text(
                title,
                style: kReuseableCardStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
