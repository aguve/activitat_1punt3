import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle bigTitle = TextStyle(
    fontSize: 40,
    color: const Color(0xFF181528),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );

  static TextStyle mediumTitle = TextStyle(
    fontSize: 24,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );

  static TextStyle activityType = TextStyle(
    fontSize: 18,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: const Color(0xFF181528),
  );

  static TextStyle distance = TextStyle(
    fontSize: 24,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: const Color(0xFF181528),
  );

  static TextStyle otherText = TextStyle(
    fontSize: 14,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    color: const Color(0xFF181528),
  );

  static TextStyle link = TextStyle(
    fontSize: 14,
    color: const Color(0xff3407da),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    decoration: TextDecoration.underline,
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    foregroundColor: Colors.white,
    backgroundColor: const Color(0xFFF896D8),
    titleTextStyle: mediumTitle,
    centerTitle: true,
  );

  static BottomNavigationBarThemeData bottomNavTheme =
      const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xff3407da),
    unselectedItemColor: Colors.black,
  );

  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    appBarTheme: appBarTheme,
    bottomNavigationBarTheme: bottomNavTheme,
  );
}
