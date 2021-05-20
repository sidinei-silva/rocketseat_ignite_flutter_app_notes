import 'package:flutter/material.dart';
import 'package:notes/home_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      home: HomePage(),
    );
  }
}
