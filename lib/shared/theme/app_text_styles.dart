import 'package:flutter/material.dart';
import 'package:notes/shared/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get splashTitle;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get splashTitle => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        color: AppTheme.colors.splashTextTitle,
      );
}
