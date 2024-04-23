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
    apiKey: 'AIzaSyDMe7vxav_7C7X0oGA-VG0VBgBcJI38s1c',
    appId: '1:293653603761:web:b0014306a4c39169ca8990',
    messagingSenderId: '293653603761',
    projectId: 'masimuapp',
    authDomain: 'masimuapp.firebaseapp.com',
    storageBucket: 'masimuapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCY9PvVF9Edbu6iyJDJTa9hXBmzApFe8VI',
    appId: '1:293653603761:android:d6f6ffbf79d6cb8aca8990',
    messagingSenderId: '293653603761',
    projectId: 'masimuapp',
    storageBucket: 'masimuapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCB9nMD2WsFhJpoFc5v7DaBYYTtkEc3gho',
    appId: '1:293653603761:ios:ee05d382ca0f087dca8990',
    messagingSenderId: '293653603761',
    projectId: 'masimuapp',
    storageBucket: 'masimuapp.appspot.com',
    iosBundleId: 'com.example.masimuApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCB9nMD2WsFhJpoFc5v7DaBYYTtkEc3gho',
    appId: '1:293653603761:ios:ee05d382ca0f087dca8990',
    messagingSenderId: '293653603761',
    projectId: 'masimuapp',
    storageBucket: 'masimuapp.appspot.com',
    iosBundleId: 'com.example.masimuApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDMe7vxav_7C7X0oGA-VG0VBgBcJI38s1c',
    appId: '1:293653603761:web:9ae34ccc35be23a0ca8990',
    messagingSenderId: '293653603761',
    projectId: 'masimuapp',
    authDomain: 'masimuapp.firebaseapp.com',
    storageBucket: 'masimuapp.appspot.com',
  );
}