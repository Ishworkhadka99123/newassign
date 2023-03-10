import 'package:flutter/material.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    primaryColor: HexColor.fromHex("#1176ee"),
    primaryColorLight: HexColor.fromHex("#B3ED9728"),
    primaryColorDark: HexColor.fromHex("#d17d11"),
    disabledColor: HexColor.fromHex("#707070"),
    fontFamily: 'Open Sans',
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: HexColor.fromHex("#707070"),
      buttonColor: HexColor.fromHex("#1176ee"),
      splashColor: HexColor.fromHex("#B3ED9728"),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: HexColor.fromHex("#1176ee"),
      elevation: 4,
      shadowColor: HexColor.fromHex("#B3ED9728"),
      titleTextStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: HexColor.fromHex("#1176ee"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(8),
      hintStyle: TextStyle(
        fontSize: 12,
        color: HexColor.fromHex("#707070"),
        fontWeight: FontWeight.normal,
      ),
      labelStyle: TextStyle(
        fontSize: 12,
        color: HexColor.fromHex("#525252"),
        fontWeight: FontWeight.normal,
      ),
      errorStyle: TextStyle(
        fontSize: 12,
        color: HexColor.fromHex("#e61f34"),
        fontWeight: FontWeight.normal,
      ),

      //Focus border
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor.fromHex("#1176ee"), width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      // error border
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor.fromHex("#e61f34"), width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor.fromHex("#1176ee"), width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      // enabled border
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: HexColor.fromHex("#737477"), width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    ),
  );
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
