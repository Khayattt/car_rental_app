// color_schemes.dart
import 'package:flutter/material.dart';

class AppColors {
  // Light mode colors
  static const Color lightPrimary = Color.fromARGB(255, 241, 100, 100);
  static const Color lightSecondary = Color(0xFF03DAC6);
  static const Color lightTertiary = Color(0xFFBB86FC);

  // Dark mode colors
  static const Color darkPrimary = Color(0xFFBB86FC);
  static const Color darkSecondary = Color(0xFF03DAC6);
  static const Color darkTertiary = Color(0xFF3700B3);
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
