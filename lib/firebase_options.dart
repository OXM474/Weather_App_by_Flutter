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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDpf37fzyeYbUGAw-R2N55bTO_lQxWqLtU',
    appId: '1:420291673101:web:45be3dd1cb363bd8cd6944',
    messagingSenderId: '420291673101',
    projectId: 'weatherapp-8a9cb',
    authDomain: 'weatherapp-8a9cb.firebaseapp.com',
    storageBucket: 'weatherapp-8a9cb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_cNR8-UefTuALijKLz0-A48mmyqfz9wk',
    appId: '1:420291673101:android:af6997ba979f44ddcd6944',
    messagingSenderId: '420291673101',
    projectId: 'weatherapp-8a9cb',
    storageBucket: 'weatherapp-8a9cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeyAUdp1uEVU3Ms1DKd5DPuUGJtjBhV8A',
    appId: '1:420291673101:ios:6c524c41b41a4efbcd6944',
    messagingSenderId: '420291673101',
    projectId: 'weatherapp-8a9cb',
    storageBucket: 'weatherapp-8a9cb.appspot.com',
    iosBundleId: 'com.example.weatherAppByFlutter',
  );
}
