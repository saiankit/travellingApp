import 'package:flutter/material.dart';
import 'package:travellingApp/components/flightTickets.dart';
import 'package:travellingApp/components/flying_details.dart';
import 'package:travellingApp/components/sorting_details.dart';
import 'package:travellingApp/components/tabs.dart';
import 'package:travellingApp/utilities/themeColors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 490.0,
          decoration: BoxDecoration(
              color: ThemeColors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(45.0))),
        ),
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              FlyingDetails(),
              SizedBox(height: 20.0),
              SortingDetails(),
              SizedBox(height: 15.0),
              MyTabs(),
              SizedBox(height: 10.0),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
