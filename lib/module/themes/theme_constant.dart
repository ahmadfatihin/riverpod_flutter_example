import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey,
        titleTextStyle: GoogleFonts.poppins(fontSize: 18),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
      ),
      primaryColor: Colors.white.withOpacity(0.2),
      scaffoldBackgroundColor: Colors.white);
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provide us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
      primaryColor: Colors.black.withOpacity(0.2),
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.poppins(fontSize: 18),
      ),
      scaffoldBackgroundColor: Colors.black);
}
