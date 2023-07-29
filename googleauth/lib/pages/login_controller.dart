// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googleauth/firebase_options.dart';
import 'package:googleauth/pages/login.dart';

class Logincontroller extends GetxController {
  final _googleSignIn = GoogleSignIn();
  var GoogleAccount = Rx<GoogleSignInAccount?>(null);
  login() async {

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
   GoogleAccount.value= await _googleSignIn.signIn();
      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
     final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
     final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
void logout() async{
    _googleSignIn.signOut();
   await Get.offAll(LoginPage());
  //  .then((value) => Get.offAll(LoginPage()));
}
 
}
