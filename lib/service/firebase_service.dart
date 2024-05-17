import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> signUp (String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;  
    } catch (e) {
      print("Algum erro occoreu:$e");
      return null;
    }
  }

  Future<String?> signIn (String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;      
    } catch (e) {
      print("Algum erro occoreu:$e");
      return null;
    }
  }

  Future signOut() async {
    await _auth.signOut();
  }

}