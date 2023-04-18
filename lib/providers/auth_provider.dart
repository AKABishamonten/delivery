
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthWithProvider extends ChangeNotifier {
  bool otpVisibility = false;
  String verificationID = "";
  FirebaseAuth auth = FirebaseAuth.instance;
  String logintype = "";
  var userdata = null;
  final googleSignIn = GoogleSignIn(
  );
//GoogleSignIn
Future googleLogin(context) async {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? userdata;
  final googleUser = await googleSignIn.signIn();
  if (googleUser == null) return;
  userdata = googleUser;

  final googleAuth = await googleUser.authentication;

  final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

  await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
  logintype = "google";
  notifyListeners();
  NavigateToProfile(context);
  });
}



  Future signOut(context) async {
    switch (logintype) {
      case "google":
        await FirebaseAuth.instance.signOut();
        await googleSignIn.disconnect();
        break;
      default:
        await FirebaseAuth.instance.signOut();
    }
    notifyListeners();
    Navigator.pushNamed(context, "/LoginScreen");
  }

  void NavigateToProfile(context) {
    Navigator.pushNamed(context, "/MainScreen");
  }
}