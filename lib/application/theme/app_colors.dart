import 'package:flutter/material.dart';

abstract class AppColors {
  // static const white = Color.fromARGB(255, 255, 255, 255);
  // static const gray = Color.fromARGB(255, 123, 123, 123);
  // static const lightGray = Color.fromARGB(255, 251, 251, 251);
  // static const transparentWhite = Color.fromRGBO(170, 170, 170, 1);
  // static const darkBlue = Color.fromARGB(255, 61, 72, 161);
  // static const purple = Color.fromARGB(127, 61, 72, 161);
  // static const darkRed = Color.fromARGB(255, 162, 38, 54);
  // static const black = Color.fromARGB(255, 56, 67, 74);
  // static const shadow = Color.fromARGB(48, 0, 0, 0);

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
