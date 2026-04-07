import 'package:flutter/material.dart';
import 'package:recipe_book/application/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.darkBlue,
      onPrimary: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
      tertiary: AppColors.darkRed,
      onTertiary: AppColors.white,
      shadow: AppColors.shadow,
    ),
    scaffoldBackgroundColor: AppColors.lightGray,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkRed,
      foregroundColor: AppColors.white,
      elevation: 6,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBlue,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.transparentWhite,
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
        letterSpacing: 0.15,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.absolutBlack,
        letterSpacing: 0.15,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
        letterSpacing: 0.25,
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.transparentWhite,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
        letterSpacing: 0.5,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: AppColors.gray, width: 1),
      ),
      labelStyle: TextStyle(
        color: AppColors.gray,
        fontSize: 12,
        letterSpacing: 0.5,
      ),
    ),
  );
}
