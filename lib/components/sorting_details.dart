import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travellingApp/utilities/themeColors.dart';
import 'package:travellingApp/widgets/dropDown.dart';

class SortingDetails extends StatefulWidget {
  @override
  _SortingDetailsState createState() => _SortingDetailsState();
}

class _SortingDetailsState extends State<SortingDetails> {
  String dropdownValue = 'Price';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Sort by:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  DropDown(dropdownValue)
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF499D95),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        child: Container(
                          height: 18.0,
                          width: 18.0,
                          decoration: BoxDecoration(
                              color: ThemeColors.orange,
                              borderRadius: BorderRadius.circular(9.0)),
                          child: Center(child: Text('1')),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF499D95),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(
                      Octicons.settings,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
