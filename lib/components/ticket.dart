import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travellingApp/utilities/themeColors.dart';
import 'package:travellingApp/utilities/themeStyles.dart';

class TicketCard extends StatefulWidget {
  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final bool stops;
  final String totalTime;
  final bool ticketType;
  TicketCard(
      {this.price,
      this.arrivalTime,
      this.departureTime,
      this.destinationCode,
      this.originCode,
      this.stops,
      this.totalTime,
      this.ticketType});
  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('\$${widget.price}', style: ThemeStyles.ticketPrice)
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                      Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${widget.originCode}',
                          style: ThemeStyles.mainBlackStyle),
                      Text('${widget.destinationCode}',
                          style: ThemeStyles.mainBlackStyle)
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${widget.departureTime}',
                          style: ThemeStyles.subBlackStyle),
                      Text('${widget.arrivalTime}',
                          style: ThemeStyles.subBlackStyle),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.blur_on, color: Colors.grey),
                        Text('- - - - - - - - - - - - - -'),
                        Icon(Entypo.aircraft_take_off, color: Colors.grey),
                        Text('- - - - - - - - - - - - - -'),
                        Icon(Icons.blur_on, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${widget.totalTime}', style: ThemeStyles.greyStyle),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 295.0,
          child: Container(
            decoration: BoxDecoration(
              color: widget.ticketType ? ThemeColors.orange : ThemeColors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
            ),
            height: 70.0,
            width: 100.0,
            child: widget.ticketType
                ? Center(
                    child: Text(
                      'Top',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                      'Med',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
