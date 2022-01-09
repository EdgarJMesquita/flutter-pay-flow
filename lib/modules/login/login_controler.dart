import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controler.dart';
import 'package:payflow/shared/models/user_models.dart';

class LoginControler {
  final authControler = AuthControler();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModel(name: response!.displayName!, photoUrl: response.photoUrl);
      authControler.saveUser(user);
      authControler.setUser(context, user);
    } catch (error) {
      authControler.setUser(context, null);
      print(error);
    }
  }
}
