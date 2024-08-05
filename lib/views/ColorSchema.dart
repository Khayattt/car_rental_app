// color_schemes.dart
import 'package:flutter/material.dart';

class AppColors {
  // Light mode colors
  static const Color lightPrimary = Color.fromARGB(255, 212, 212, 212);
  static const Color lightSecondary = Color.fromARGB(108, 0, 0, 0);
  static const Color lightTertiary = Color.fromARGB(255, 250, 217, 0);

  // Dark mode colors
  static const Color darkPrimary = Color.fromARGB(108, 0, 0, 0);
  static const Color darkSecondary = Color.fromARGB(255, 212, 212, 212);
  static const Color darkTertiary = Color.fromARGB(255, 250, 217, 0);
}

// Define ThemeData for light and dark themes
ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.lightPrimary,
  secondaryHeaderColor: AppColors.lightSecondary,
  colorScheme: ColorScheme.light(
    primary: AppColors.lightPrimary,
    secondary: AppColors.lightSecondary,
    tertiary: AppColors.lightTertiary,
  ),
  // Add other theme properties as needed
);

ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.darkPrimary,
  secondaryHeaderColor: AppColors.darkSecondary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    tertiary: AppColors.darkTertiary,
  ),
  // Add other theme properties as needed
);
