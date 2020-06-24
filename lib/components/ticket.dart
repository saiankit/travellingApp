import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TicketCard extends StatefulWidget {
  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final int stops;
  final String totalTime;
  TicketCard(
      {this.price,
      this.arrivalTime,
      this.departureTime,
      this.destinationCode,
      this.originCode,
      this.stops,
      this.totalTime});
  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 30.0, bottom: 30.0, left: 30.0, right: 30.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '${widget.price}',
                    style: TextStyle(
                        color: Color(0xFFff7259),
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fr 6 Mar.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Fr 6 Mar.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${widget.originCode}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    '${widget.destinationCode}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${widget.departureTime}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    '${widget.arrivalTime}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.blur_on, color: Colors.grey),
                    Icon(Entypo.aircraft_take_off, color: Colors.grey),
                    Icon(Icons.blur_on, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${widget.totalTime}',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
