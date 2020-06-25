import 'package:flutter/material.dart';

class FlyingDetails extends StatefulWidget {
  @override
  _FlyingDetailsState createState() => _FlyingDetailsState();
}

class _FlyingDetailsState extends State<FlyingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Odessa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              Text(
                'Fr 6 Mar.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w100),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Text(
                'Los Angeles',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
