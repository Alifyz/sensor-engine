import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:sensor_engine/sensor_engine.dart';
import 'package:sensor_engine_example/pages/environment_page.dart';
import 'package:sensor_engine_example/pages/motion_page.dart';
import 'package:sensor_engine_example/pages/position_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: 48,
            right: 48,
            bottom: 120,
          ),
          child: HomePageWidget(),
        ),
      ),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try{
      print(SensorEngine.availableSensors);
    }on Exception{
      print('Error Getting the Available Sensors');
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.gps_fixed,
              color: Colors.deepOrangeAccent,
              size: 196,
            ),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepOrangeAccent,
            child: Text('Motion API'),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MotionPage())),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepOrangeAccent,
            child: Text('Environment API'),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EnvironmentPage())),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepOrangeAccent,
            child: Text('Position API'),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PositionPage())),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ],
      ),
    );
  }
}