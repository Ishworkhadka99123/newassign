import 'package:doctor_appoinment_app/Screen/register_page.dart';
import 'package:doctor_appoinment_app/app/theme.dart';
import 'package:flutter/material.dart';

import '../Screen/dashboad.dart';
import '../Screen/login_page.dart';
import '../Screen/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Booking Appointment App',
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => const LoginScreen(),
        '/register_page': (context) => const RegisterScreen(),
        '/': (context) => const DashboardScreen(),
      },
    );
  }
}
