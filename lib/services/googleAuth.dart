
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {

  signInWithGoogle() async {

    //start interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
     //obtain details from account
     final GoogleSignInAuthentication gAuth = await gUser!.authentication;
     //create new credentials 
     final Credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
     );

     //sign in
     return await FirebaseAuth.instance.signInWithCredential(Credential);
  }
}