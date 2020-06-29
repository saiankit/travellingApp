import 'package:flutter/material.dart';
import 'package:travellingApp/widgets/ticketCard.dart';

class FlightTickets extends StatefulWidget {
  @override
  _FlightTicketsState createState() => _FlightTicketsState();
}

class _FlightTicketsState extends State<FlightTickets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          TicketCard(
            price: 634,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 1120,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: false,
          ),
          TicketCard(
            price: 865,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 965,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: false,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: false,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
        ],
      ),
    );
  }
}
