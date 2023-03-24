import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/pages/statistics/humidity.dart';
import 'package:smart_farm/pages/statistics/light.dart';
import 'package:smart_farm/pages/statistics/temperature.dart';

import 'pages/home.dart';
import 'pages/quick-actions/humidity-actions.dart';
import 'pages/quick-actions/light-actions.dart';
import 'pages/quick-actions/temperature-actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,
            textTheme: TextTheme(
                labelLarge:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                displayMedium: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                bodyMedium: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.grey[600]))),
        home: const Home(),
        routes: {
          'tempActions': (context) => const TemperatureActions(),
          'lightActions': (context) => const LightActions(),
          'humidityActions': (context) => const HumidityActions(),
          'temperature':(context) => const Statistics(),
          'light':(context) => const Light(),
          'humidity':(context) => const Humidity(),

        },);
  }
}
