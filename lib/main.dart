import 'package:flutter/material.dart';
import './pages/splash.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(accentColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ));
