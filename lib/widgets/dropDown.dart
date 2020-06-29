import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travellingApp/utilities/themeColors.dart';
import 'package:travellingApp/utilities/themeStyles.dart';

class DropDown extends StatefulWidget {
  String dropDownValue;
  DropDown(this.dropDownValue);
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemeColors.greenLight,
          borderRadius: BorderRadius.circular(15.0)),
      height: 30.0,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
        child: DropdownButton<String>(
          dropdownColor: ThemeColors.greenLight,
          value: widget.dropDownValue,
          icon: Icon(
            SimpleLineIcons.arrow_down,
            size: 12.0,
            color: Colors.white,
          ),
          onChanged: (String newValue) {
            setState(() {
              widget.dropDownValue = newValue;
            });
          },
          items: <String>['Price', 'Stops', 'Arrival', 'Departure']
              .map<DropdownMenuItem<String>>((String newValue) {
            return DropdownMenuItem<String>(
              value: newValue,
              child: Text(
                newValue,
                style: ThemeStyles.dropDownTextStyle,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
