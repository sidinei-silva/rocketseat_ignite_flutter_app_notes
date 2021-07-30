import 'package:flutter/material.dart';

abstract class AppColors {
  Color get splashBackgroundPrimary;

  Color get splashTextTitle;

  Color get loginTextTitle;

  Color get loginTextSubtitle;

  Color get loginPrimaryColorButton;

  Color get loginTextButton;
}

class AppColorsDefault implements AppColors {
  @override
  Color get splashBackgroundPrimary => Colors.deepPurple;

  @override
  Color get splashTextTitle => Colors.white;

  @override
  Color get loginTextTitle => Colors.white;

  @override
  Color get loginTextSubtitle => Colors.white;

  @override
  Color get loginPrimaryColorButton => Colors.white;

  @override
  Color get loginTextButton => Colors.black;
}
