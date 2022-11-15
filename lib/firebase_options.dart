// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDKCdQqKEKHsIScqHt3k3Gz-x7eKT-dUus',
    appId: '1:174806290373:web:db28f01f779eb2e7ad45ac',
    messagingSenderId: '174806290373',
    projectId: 'best-movies1',
    authDomain: 'best-movies1.firebaseapp.com',
    storageBucket: 'best-movies1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRb75VN0ge2iEuSVM0xojJ89gHSc2zMU8',
    appId: '1:174806290373:android:20e6a454d3dc797aad45ac',
    messagingSenderId: '174806290373',
    projectId: 'best-movies1',
    storageBucket: 'best-movies1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0kqDAe9bblwSlSkhaOnEUwzO3YIit3dQ',
    appId: '1:174806290373:ios:ed2ee54e07094ba4ad45ac',
    messagingSenderId: '174806290373',
    projectId: 'best-movies1',
    storageBucket: 'best-movies1.appspot.com',
    iosClientId: '174806290373-qqrp1k6svta12t9s8d2refqu4i59t9er.apps.googleusercontent.com',
    iosBundleId: 'com.krzysztofwozniak.bestMovies',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0kqDAe9bblwSlSkhaOnEUwzO3YIit3dQ',
    appId: '1:174806290373:ios:ed2ee54e07094ba4ad45ac',
    messagingSenderId: '174806290373',
    projectId: 'best-movies1',
    storageBucket: 'best-movies1.appspot.com',
    iosClientId: '174806290373-qqrp1k6svta12t9s8d2refqu4i59t9er.apps.googleusercontent.com',
    iosBundleId: 'com.krzysztofwozniak.bestMovies',
  );
}
