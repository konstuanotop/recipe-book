import 'package:flutter/material.dart';

abstract class AppColors {
  // Базовые цвета (нейтральные)
  static const white = Color(0xFFFFFFFF);
  static const lightGray = Color(0xFFFBFBFB);
  static const gray = Color(0xFF7B7B7B);
  static const black = Color(0xFF38434A);
  static const absolutBlack = Color(0xFF000000);

  // Прозрачные/специальные
  static const transparentWhite = Color(0xFFAAAAAA);
  static const shadow = Color(0x30000000);

  // Цвета бренда (акценты)
  static const darkBlue = Color(0xFF3D48A1);
  static const purple = Color(0x803D48A1);
  static const darkRed = Color(0xFFA22636);
}
