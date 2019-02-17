import 'package:flutter/material.dart';
import './dashboard.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  initState() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Dashboard())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/logo@3x.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  Text(
                    'Marquee',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '文字跑马灯',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: Center(child: CircularProgressIndicator(strokeWidth: 2.0)),
          )
        ],
      ),
    );
  }
}
