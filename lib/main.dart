import 'package:flutter/material.dart';
import './pages/splash_page.dart';
import './pages/test.dart';
import './pages/marquee_page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(accentColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      // home: MyApp(),
      home: Test(text: "Hello World"),
      // home: MarqueePage(),
    ));
