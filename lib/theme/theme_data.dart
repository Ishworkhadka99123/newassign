import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
      primarySwatch: Colors.lightGreen,
      scaffoldBackgroundColor: Colors.grey,
      fontFamily: 'Montserrat Bold',

      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrst Bold'
          ),

          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )
      )),

      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.blue,
          elevation: 4,
          shadowColor: Colors.red,
          titleTextStyle: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )
      )



  );
}