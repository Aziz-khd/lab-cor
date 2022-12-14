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
    apiKey: 'AIzaSyAw5qlvogSnOFQIA410DfFLpuPuAGO-I3A',
    appId: '1:555242537254:web:15b7dedc1425055d3781e7',
    messagingSenderId: '555242537254',
    projectId: 'lab-2a-a91e1',
    authDomain: 'lab-2a-a91e1.firebaseapp.com',
    storageBucket: 'lab-2a-a91e1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBweukXw-sGFquE1iiZ1EEibr_UYNyWMZk',
    appId: '1:555242537254:android:e67e8ec1858eb8703781e7',
    messagingSenderId: '555242537254',
    projectId: 'lab-2a-a91e1',
    storageBucket: 'lab-2a-a91e1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpao4IxXgwnD9edX805o_lbMyEAEMC4s0',
    appId: '1:555242537254:ios:688345e1577d44e73781e7',
    messagingSenderId: '555242537254',
    projectId: 'lab-2a-a91e1',
    storageBucket: 'lab-2a-a91e1.appspot.com',
    iosClientId: '555242537254-9be4t8jcdd0th2toalm78shonq56emr2.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpao4IxXgwnD9edX805o_lbMyEAEMC4s0',
    appId: '1:555242537254:ios:688345e1577d44e73781e7',
    messagingSenderId: '555242537254',
    projectId: 'lab-2a-a91e1',
    storageBucket: 'lab-2a-a91e1.appspot.com',
    iosClientId: '555242537254-9be4t8jcdd0th2toalm78shonq56emr2.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
