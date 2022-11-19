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
    apiKey: 'AIzaSyDRDYk9MHvu_vRNbaXoB1MiUuBIJIuOQiQ',
    appId: '1:967018395086:web:15d13a10dcddf83f0ae79f',
    messagingSenderId: '967018395086',
    projectId: 'chat-app-28010',
    authDomain: 'chat-app-28010.firebaseapp.com',
    storageBucket: 'chat-app-28010.appspot.com',
    measurementId: 'G-W7F1THEBTR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfoOFsmNwU8zn6w8tPHHfY-3BRs8Nxmig',
    appId: '1:967018395086:android:ffdf361d17bc032b0ae79f',
    messagingSenderId: '967018395086',
    projectId: 'chat-app-28010',
    storageBucket: 'chat-app-28010.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBn8Tyvv95KDE-aZc8D6pfYsaPLgSROUpU',
    appId: '1:967018395086:ios:1e939950a473c30b0ae79f',
    messagingSenderId: '967018395086',
    projectId: 'chat-app-28010',
    storageBucket: 'chat-app-28010.appspot.com',
    iosClientId: '967018395086-bt6gb01ght9sh3qj285f8th57bvh9k80.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBn8Tyvv95KDE-aZc8D6pfYsaPLgSROUpU',
    appId: '1:967018395086:ios:1e939950a473c30b0ae79f',
    messagingSenderId: '967018395086',
    projectId: 'chat-app-28010',
    storageBucket: 'chat-app-28010.appspot.com',
    iosClientId: '967018395086-bt6gb01ght9sh3qj285f8th57bvh9k80.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
