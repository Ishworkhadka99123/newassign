
import 'package:doctor_appoinment_app/Screen/dashboad.dart';
import 'package:doctor_appoinment_app/Screen/signup.dart';
import 'package:doctor_appoinment_app/theme/theme_data.dart';
import 'package:flutter/material.dart';

import 'Screen/login_page.dart';
import 'Screen/splash_screen.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,



      initialRoute: '/LoginPage',

       theme: getApplicationTheme(),


      routes: {
        '/LoginPage':(context) => const LoginPage(),
        '/SplashScreen':(context) => const SplashScreen(),
        '/SignupPage':(context) => const SignupPage(),
        '/DashboardPage':(context) => const DashboardPage()

      },
    ),
  );
}

// class MaterialApp {
// }