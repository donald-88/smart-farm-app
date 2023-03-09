import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/pages/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,
            textTheme: TextTheme(
                button: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                headline2: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                bodyText2:
                    GoogleFonts.poppins(fontSize: 14, color: Colors.white))),
        home: const Landing());
  }
}
