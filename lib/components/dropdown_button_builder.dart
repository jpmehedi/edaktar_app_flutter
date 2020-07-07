import 'package:flutter/material.dart';

class DropdownButtonBuilders extends StatelessWidget {
  DropdownButtonBuilders(
      {this.dropDownButtonTag, @required this.dropdownButton});
  final String dropDownButtonTag;
  final DropdownButton dropdownButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffE7E8FC),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                dropDownButtonTag,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color(0xff00B140),
                  fontSize: 18.0,
                ),
              ),
              dropdownButton,
            ],
          ),
        ),
      ),
    );
  }
}
