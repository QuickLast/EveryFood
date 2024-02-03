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
    apiKey: 'AIzaSyBh0QDQVT3KGxZ9CrOpVo2u6CDey50srPE',
    appId: '1:615660409735:web:5288d811c89681d4953922',
    messagingSenderId: '615660409735',
    projectId: 'ev3ryfood',
    authDomain: 'ev3ryfood.firebaseapp.com',
    storageBucket: 'ev3ryfood.appspot.com',
    measurementId: 'G-Z4JE7C5Z6R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxI_MR6yqLe9q6CsAVn2Gvvq17wFsmXac',
    appId: '1:615660409735:android:f1e5edeafd6114c9953922',
    messagingSenderId: '615660409735',
    projectId: 'ev3ryfood',
    storageBucket: 'ev3ryfood.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5aY6daPbUOGfceeBN8TCHL5STLO75KTI',
    appId: '1:615660409735:ios:7d6d8fe038efde76953922',
    messagingSenderId: '615660409735',
    projectId: 'ev3ryfood',
    storageBucket: 'ev3ryfood.appspot.com',
    iosBundleId: 'com.example.cookingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5aY6daPbUOGfceeBN8TCHL5STLO75KTI',
    appId: '1:615660409735:ios:fec79ce5ae31e3e0953922',
    messagingSenderId: '615660409735',
    projectId: 'ev3ryfood',
    storageBucket: 'ev3ryfood.appspot.com',
    iosBundleId: 'com.example.cookingApp.RunnerTests',
  );
}