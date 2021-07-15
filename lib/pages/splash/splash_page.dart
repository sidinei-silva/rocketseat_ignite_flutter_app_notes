import 'package:flutter/material.dart';
import 'package:notes/shared/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.splashBackgroundPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.notes_rounded,
              size: 50,
              color: AppTheme.colors.splashTextTitle,
            ),
            Text(
              "My Notes",
              style: AppTheme.textStyles.splashTitle,
            ),
          ],
        ),
      ),
    );
  }
}
