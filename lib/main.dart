import 'package:flight_appointment_app/pages/landingPage.dart';
import 'package:flight_appointment_app/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlightApp());
}

class FlightApp extends StatelessWidget {
  const FlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mateo Group Project',
      home: const Landingpage(),
      routes: {
        '/login' : (context) => const LoginPage(),
      },
    );
  }
}