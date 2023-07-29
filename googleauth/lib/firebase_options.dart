// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// ignore: non_constant_identifier_names
/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
/// 
/// 




class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyANCwRUg5mR-xJ_KN2lO1_B91TK_l78oHE',
    appId: '1:185378809282:web:2ddca591c64bf0e1d0e25b',
    messagingSenderId: '185378809282',
    projectId: 'auth-53724',
    authDomain: 'auth-53724.firebaseapp.com',
    databaseURL: 'https://auth-53724-default-rtdb.firebaseio.com',
    storageBucket: 'auth-53724.appspot.com',
    measurementId: 'G-KNT940CC1G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBI6thBm_jYan2ou3_E5X-Jnj8b9-Fboms',
    appId: '1:185378809282:android:a273383afcb118b7d0e25b',
    messagingSenderId: '185378809282',
    projectId: 'auth-53724',
    databaseURL: 'https://auth-53724-default-rtdb.firebaseio.com',
    storageBucket: 'auth-53724.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJRSxwjb7LBHR_Wi9Bhu4Jdy6fijf-fv4',
    appId: '1:185378809282:ios:56672e72c15cac41d0e25b',
    messagingSenderId: '185378809282',
    projectId: 'auth-53724',
    databaseURL: 'https://auth-53724-default-rtdb.firebaseio.com',
    storageBucket: 'auth-53724.appspot.com',
    iosClientId: '185378809282-ukdthetbpvnbmsrk0d5vrdbeufdr9nl5.apps.googleusercontent.com',
    iosBundleId: 'com.example.googleauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJRSxwjb7LBHR_Wi9Bhu4Jdy6fijf-fv4',
    appId: '1:185378809282:ios:46503652afde9d3bd0e25b',
    messagingSenderId: '185378809282',
    projectId: 'auth-53724',
    databaseURL: 'https://auth-53724-default-rtdb.firebaseio.com',
    storageBucket: 'auth-53724.appspot.com',
    iosClientId: '185378809282-31jqr9j81cdlo12er4anc76r3gioljaa.apps.googleusercontent.com',
    iosBundleId: 'com.example.googleauth.RunnerTests',
  );
}
