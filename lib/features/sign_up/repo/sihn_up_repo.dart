import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> register(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }
}
