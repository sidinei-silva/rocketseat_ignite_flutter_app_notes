import 'package:flutter/material.dart';

abstract class AppColors {
  Color get splashBackgroundPrimary;

  Color get splashTextTitle;
}

class AppColorsDefault implements AppColors {
  @override
  Color get splashBackgroundPrimary => Colors.deepPurple;

  @override
  Color get splashTextTitle => Colors.white;
}
