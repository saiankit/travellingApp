import 'package:flutter/material.dart';
import './themeColors.dart';

class ThemeStyles {
  static TextStyle departureTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
  );
  static TextStyle arrivalTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle travelDateTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w100,
  );
  static TextStyle dropDownTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  );
  static TextStyle ticketPrice = TextStyle(
    color: ThemeColors.orange,
    fontSize: 35.0,
    fontWeight: FontWeight.w900,
  );
  static TextStyle greyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 15.0,
  );
  static TextStyle mainBlackTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 30.0,
  );
  static TextStyle subBlackTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 15.0,
  );
}
