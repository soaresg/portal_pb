import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_pb/constants.dart';
import 'package:portal_pb/screens/home/home_page.dart';

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
            fontFamily: GoogleFonts.openSans().fontFamily,
            fontSize: 45.0,
            color: Colors.white,
          ),
          labelLarge: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            color: Colors.white,
          ),
        ),
      ),
      // home: const LoginPage(),
      home: const HomePage(),
    );
  }
}
