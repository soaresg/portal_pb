import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_pb/constants.dart';
import 'package:portal_pb/login_page.dart';
import 'package:portal_pb/screens/main/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Power BI Screw',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
        textTheme: TextTheme(
          displaySmall: TextStyle(
            fontFamily: GoogleFonts.mukta().fontFamily,
            fontSize: 45.0,
          ),
          labelLarge: TextStyle(
            fontFamily: GoogleFonts.mukta().fontFamily,
          ),
          titleMedium: TextStyle(
            fontFamily: GoogleFonts.mukta().fontFamily,
          ),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.mukta().fontFamily,
          ),
        ),
      ),
      // home: const LoginPage(),
      home: const DashboardPage(),
    );
  }
}
