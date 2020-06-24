import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travellingApp/screens/home_screen.dart';
import 'package:travellingApp/utilities/themeColors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Helvetica'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.green,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Entypo.chevron_thin_left),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(SimpleLineIcons.menu),
              onPressed: () {},
            )
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
