import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';

class GmailAuth {
  GmailAuth._() {}
  static auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  static GoogleSignIn _googleSignIn = new GoogleSignIn();
  static Future<auth.User> login() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    auth.OAuthCredential oAuthCredential = auth.GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);
    auth.UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(oAuthCredential);
    auth.User user = userCredential.user;
    return user;
  }

  static logout() async {
    await _googleSignIn.signOut();
  }
}
