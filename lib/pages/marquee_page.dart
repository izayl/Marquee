import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';

class MarqueePage extends StatefulWidget {
  final String text;
  final List<String> texts;
  // todo: config class
  final config;

  MarqueePage({Key key, this.text, this.texts, this.config});

  @override
  _MarqueePageState createState() => _MarqueePageState();
}

class _MarqueePageState extends State<MarqueePage> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 110.0),
          child: Marquee(
            // scrollAxis: Axis.horizontal,
            // blankSpace: 300.0,
            // startPadding: 300.0,
            text: widget.text,
            texts: widget.texts,
            style: TextStyle(fontSize: 120.0),
          ),
        ));
  }
}
