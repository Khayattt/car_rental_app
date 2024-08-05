import 'package:flutter/material.dart';

class AppColors {
  // Light mode colors
  static const Color lightPrimary = Color.fromARGB(255, 212, 212, 212);
  static const Color lightSecondary = Color.fromARGB(108, 0, 0, 0);
  static const Color lightTertiary = Color.fromARGB(255, 250, 217, 0);

  // Dark mode colors
  static const Color darkPrimary = Color.fromARGB(255, 44, 43, 44);
  static const Color darkSecondary = Color.fromARGB(255, 248, 255, 31);
  static const Color darkTertiary = Color.fromARGB(255, 238, 238, 238);
}

// Define ThemeData for light and dark themes
ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.lightPrimary,
  secondaryHeaderColor: AppColors.lightSecondary,
  colorScheme: ColorScheme.light(
    primary: AppColors.lightSecondary,
    secondary: AppColors.lightTertiary,
    tertiary: AppColors.lightTertiary,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: AppColors.lightSecondary),
    bodyText2: TextStyle(color: AppColors.lightSecondary),
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.lightSecondary),
    headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.lightSecondary),
    caption: TextStyle(color: AppColors.lightTertiary),
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.darkPrimary,
  secondaryHeaderColor: AppColors.darkSecondary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    tertiary: AppColors.darkTertiary,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: AppColors.darkTertiary),
    bodyText2: TextStyle(color: AppColors.darkTertiary),
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.darkTertiary),
    headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.darkTertiary),
    caption: TextStyle(color: AppColors.darkSecondary),
  ),
);