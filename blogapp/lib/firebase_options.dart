// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBfxPJTVMImf3clIWalIam3efOMfi0HkV8',
    appId: '1:630202565687:web:ef48c04a4ea3cbc627abb2',
    messagingSenderId: '630202565687',
    projectId: 'flutterblog-1567d',
    authDomain: 'flutterblog-1567d.firebaseapp.com',
    databaseURL: 'https://flutterblog-1567d-default-rtdb.firebaseio.com',
    storageBucket: 'flutterblog-1567d.appspot.com',
    measurementId: 'G-HW2JE9KXY2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2Z6jxlJIg34CheBdcjL8vPGHGYSsSXTg',
    appId: '1:630202565687:android:138de1a36f8a1b6727abb2',
    messagingSenderId: '630202565687',
    projectId: 'flutterblog-1567d',
    databaseURL: 'https://flutterblog-1567d-default-rtdb.firebaseio.com',
    storageBucket: 'flutterblog-1567d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4rLchZlf47p6FNBMRosVM7wTqqjBJ_F4',
    appId: '1:630202565687:ios:59458ff4f9f010b527abb2',
    messagingSenderId: '630202565687',
    projectId: 'flutterblog-1567d',
    databaseURL: 'https://flutterblog-1567d-default-rtdb.firebaseio.com',
    storageBucket: 'flutterblog-1567d.appspot.com',
    iosClientId: '630202565687-s9ttbsa886o32j0sbik8o1ufcvdceqem.apps.googleusercontent.com',
    iosBundleId: 'com.example.blogapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4rLchZlf47p6FNBMRosVM7wTqqjBJ_F4',
    appId: '1:630202565687:ios:09e5e920a8a55d5e27abb2',
    messagingSenderId: '630202565687',
    projectId: 'flutterblog-1567d',
    databaseURL: 'https://flutterblog-1567d-default-rtdb.firebaseio.com',
    storageBucket: 'flutterblog-1567d.appspot.com',
    iosClientId: '630202565687-2p0vm9g5ir4tmn4aso35ce3gd2bb179n.apps.googleusercontent.com',
    iosBundleId: 'com.example.blogapp.RunnerTests',
  );
}