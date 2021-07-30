import 'package:flutter/material.dart';
import 'package:notes/shared/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get splashTitle;

  TextStyle get loginTitle;
  TextStyle get loginTextSubtitle;
  TextStyle get loginTextButton;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get splashTitle => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        color: AppTheme.colors.splashTextTitle,
      );

  @override
  TextStyle get loginTitle => TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        color: AppTheme.colors.loginTextTitle,
      );

  @override
  TextStyle get loginTextSubtitle => TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontFamily: 'Roboto',
        color: AppTheme.colors.loginTextSubtitle,
      );

  @override
  TextStyle get loginTextButton => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: 'Roboto',
        color: AppTheme.colors.loginTextButton,
      );
}
