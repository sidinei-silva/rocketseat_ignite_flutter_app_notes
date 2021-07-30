import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes/shared/auth/auth_state.dart';
import 'package:notes/shared/models/user_model.dart';

class AuthController {
  UserModel? user;
  AuthState authState = AuthStateEmpty();
  VoidCallback onUpdate;

  AuthController({required this.onUpdate});

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      authState = AuthStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      authState = AuthStateSuccess(user: user!);
      onUpdate();
    } catch (error) {
      authState = AuthStateFailure(message: error.toString());
      onUpdate();
    }
  }
}
