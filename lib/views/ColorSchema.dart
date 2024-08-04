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
  primaryColor: Color.fromARGB(255, 199, 196, 196),
  secondaryHeaderColor: AppColors.lightSecondary,
  colorScheme: ColorScheme.light(
    primary: Color.fromARGB(255, 255, 242, 57),
    secondary: AppColors.lightSecondary,
    tertiary: const Color.fromARGB(255, 228, 228, 228),
  ),
  // Add other theme properties as needed
);

ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.darkPrimary,
  secondaryHeaderColor: AppColors.darkSecondary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: const Color.fromARGB(255, 46, 47, 47),
    tertiary: Color.fromARGB(255, 218, 207, 58),
  ),
  // Add other theme properties as needed
);
