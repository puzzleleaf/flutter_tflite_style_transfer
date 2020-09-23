import 'package:flutter/material.dart';
import 'package:flutter_tflite_style_transfer/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style Transfer',
      theme: ThemeData(

      ),
      home: HomePage()
    );
  }
}

