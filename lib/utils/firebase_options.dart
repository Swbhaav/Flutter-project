// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDRWqFvtyZn-RiGkU1efdTl8MhuPrnEa_I',
    appId: '1:995098786301:web:d44f6fd260852855664194',
    messagingSenderId: '995098786301',
    projectId: 'vadhyantram',
    authDomain: 'vadhyantram.firebaseapp.com',
    storageBucket: 'vadhyantram.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC27s3IkEEhvLyZ-pV9540AVYTRbZGru5w',
    appId: '1:995098786301:android:7d302a6a91d71eb6664194',
    messagingSenderId: '995098786301',
    projectId: 'vadhyantram',
    storageBucket: 'vadhyantram.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgoaBKjgGjkHuHT26KmTw5ObgDln4fSuY',
    appId: '1:995098786301:ios:7634f8969480ee35664194',
    messagingSenderId: '995098786301',
    projectId: 'vadhyantram',
    storageBucket: 'vadhyantram.appspot.com',
    iosBundleId: 'com.example.vadhyantram',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAgoaBKjgGjkHuHT26KmTw5ObgDln4fSuY',
    appId: '1:995098786301:ios:7634f8969480ee35664194',
    messagingSenderId: '995098786301',
    projectId: 'vadhyantram',
    storageBucket: 'vadhyantram.appspot.com',
    iosBundleId: 'com.example.vadhyantram',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDRWqFvtyZn-RiGkU1efdTl8MhuPrnEa_I',
    appId: '1:995098786301:web:d2f5a516439f3542664194',
    messagingSenderId: '995098786301',
    projectId: 'vadhyantram',
    authDomain: 'vadhyantram.firebaseapp.com',
    storageBucket: 'vadhyantram.appspot.com',
  );
}
