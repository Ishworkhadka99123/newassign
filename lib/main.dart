
import 'package:doctor_appoinment_app/Screen/signup.dart';
import 'package:doctor_appoinment_app/theme/theme_data.dart';
import 'package:flutter/material.dart';

import 'Screen/login_page.dart';
import 'Screen/splash_screen.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,



      initialRoute: '/',

      theme: getApplicationTheme(),


      routes: {
        '/LoginPage':(context) => const LoginPage(),
        '/':(context) => const SplashScreen(),
        '/':(context) => SignupPage(),

      },
    ),
  );
}
//
// class MaterialApp {
// }