import 'package:flutter/material.dart';
import 'package:notes/pages/create_note/create_note_page.dart';
import 'package:notes/pages/home/home_page.dart';
import 'package:notes/pages/login/login_page.dart';
import 'package:notes/pages/splash/splash_page.dart';
import 'package:notes/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      initialRoute: "/splash",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/create-note": (context) => CreateNotePage()
      },
    );
  }
}
