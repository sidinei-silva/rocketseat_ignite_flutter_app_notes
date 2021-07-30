import 'package:flutter/material.dart';
import 'package:notes/shared/auth/auth_controller.dart';
import 'package:notes/shared/auth/auth_state.dart';
import 'package:notes/shared/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AuthController authController;

  @override
  void initState() {
    authController = AuthController(onUpdate: () {
      if (authController.authState is AuthStateSuccess) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.splashBackgroundPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    "Salve todas as suas notas em um só lugar",
                    style: AppTheme.textStyles.loginTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      "Faça seu login com sua conta google.",
                      style: AppTheme.textStyles.loginTextSubtitle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    if (authController.authState is AuthStateLoading) ...[
                      CircularProgressIndicator(
                        color: Colors.white,
                      )
                    ] else if (AuthState is AuthStateFailure) ...[
                      Text((AuthState as AuthStateFailure).message)
                    ] else ...[
                      ElevatedButton(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock,
                              color: AppTheme.colors.loginTextButton,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Conta google",
                              style: AppTheme.textStyles.loginTextButton,
                            ),
                          ],
                        ),
                        onPressed: () {
                          authController.googleSignIn();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppTheme.colors.loginPrimaryColorButton,
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
