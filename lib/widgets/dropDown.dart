import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DropDown extends StatefulWidget {
  String dropdownValue;
  DropDown(this.dropdownValue);
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Color(0xFF499D95),
      value: widget.dropdownValue,
      icon: Icon(
        SimpleLineIcons.arrow_down,
        size: 10.0,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
        setState(() {
          widget.dropdownValue = newValue;
        });
      },
      items: <String>['Price', 'Stops', 'Arrival', 'Departure']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        );
      }).toList(),
    );
  }
}
