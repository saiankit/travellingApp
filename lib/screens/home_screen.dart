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
          height: 500.0,
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0, left: 20.0, right: 20.0, bottom: 30.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[100]),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'TRAIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'BUS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'PLANE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
