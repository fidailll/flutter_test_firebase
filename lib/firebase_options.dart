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
    apiKey: 'AIzaSyCMN0jfLJOj2W9xR4PxYfJH0CuketXMEoc',
    appId: '1:1004337996485:web:21b747c37a4313f44606ac',
    messagingSenderId: '1004337996485',
    projectId: 'digital-solution-3023a',
    authDomain: 'digital-solution-3023a.firebaseapp.com',
    storageBucket: 'digital-solution-3023a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABLyiTESWRbXpGQPekzLsyNBDhsP-PoVg',
    appId: '1:1004337996485:android:7832d45f70f890334606ac',
    messagingSenderId: '1004337996485',
    projectId: 'digital-solution-3023a',
    storageBucket: 'digital-solution-3023a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmnI4WtqHViQe5mx-_OhFQ3IEBe0lw4TM',
    appId: '1:1004337996485:ios:2c8123505cc375904606ac',
    messagingSenderId: '1004337996485',
    projectId: 'digital-solution-3023a',
    storageBucket: 'digital-solution-3023a.appspot.com',
    iosClientId: '1004337996485-u1s967pvf4fu0b3aq81821ediam8job9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTestFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmnI4WtqHViQe5mx-_OhFQ3IEBe0lw4TM',
    appId: '1:1004337996485:ios:2c8123505cc375904606ac',
    messagingSenderId: '1004337996485',
    projectId: 'digital-solution-3023a',
    storageBucket: 'digital-solution-3023a.appspot.com',
    iosClientId: '1004337996485-u1s967pvf4fu0b3aq81821ediam8job9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTestFirebase',
  );
}