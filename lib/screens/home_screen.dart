import 'package:flutter/material.dart';
import 'package:travellingApp/components/flight_list.dart';
import 'package:travellingApp/components/flying_details.dart';
import 'package:travellingApp/components/sorting_details.dart';

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
          height: 450.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0),
            ),
            color: Color(0xFF138675),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              FlyingDetails(),
              SizedBox(height: 20.0),
              SortingDetails(),
              // Tabs(),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
