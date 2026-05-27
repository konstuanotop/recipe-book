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
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBlue,
      foregroundColor: AppColors.white,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      elevation: 4,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.darkBlue,
      surfaceTintColor: Colors.transparent,
      indicatorColor: AppColors.white,
      labelTextStyle: WidgetStateTextStyle.resolveWith((state) {
        if (state.contains(WidgetState.selected)) {
          return const TextStyle(
            color: AppColors.white,
            fontSize: 12,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w400,
          );
        }

        return const TextStyle(
          color: AppColors.transparentWhite,
          fontSize: 12,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400,
        );
      }),

      iconTheme: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.black);
        }

        return const IconThemeData(color: AppColors.white);
      }),
      elevation: 4,
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
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
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
        fontSize: 14,
        letterSpacing: 0.5,
      ),
    ),
  );
}
