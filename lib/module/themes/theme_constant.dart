import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: Colors.white.withOpacity(0.2),
      scaffoldBackgroundColor: Colors.white);
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provide us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
      primaryColor: Colors.black.withOpacity(0.2),
      scaffoldBackgroundColor: Colors.black);
}
