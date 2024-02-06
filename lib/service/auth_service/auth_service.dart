import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  loginByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception catch (err) {
      print(err);
    }
  }
}
