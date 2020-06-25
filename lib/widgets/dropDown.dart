import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travellingApp/utilities/themeStyles.dart';

class DropDown extends StatefulWidget {
  String dropdownValue;
  DropDown(this.dropdownValue);
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF499D95),
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 30.0,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 10.0,
          right: 10.0,
        ),
        child: DropdownButton<String>(
          dropdownColor: Color(0xFF499D95),
          value: widget.dropdownValue,
          icon: Icon(
            SimpleLineIcons.arrow_down,
            size: 12.0,
            color: Colors.white,
          ),
          onChanged: (String newValue) {
            setState(
              () {
                widget.dropdownValue = newValue;
              },
            );
          },
          items: <String>['Price', 'Stops', 'Arrival', 'Departure']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: ThemeStyles.dropDownTextStyle),
            );
          }).toList(),
        ),
      ),
    );
  }
}
