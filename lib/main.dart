import 'package:flutter/material.dart';
import './pages/splash_page.dart';
import './pages/marquee_page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(accentColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      // home: MyApp(),
      home: MarqueePage(),
    ));
