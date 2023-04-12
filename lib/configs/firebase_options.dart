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
    apiKey: 'AIzaSyCvhYs8t66n9YS7eE3aUSZMRA_R3OKKRtg',
    appId: '1:394347356170:web:7f0ff08974a25286da3ff3',
    messagingSenderId: '394347356170',
    projectId: 'questloco',
    authDomain: 'questloco.firebaseapp.com',
    storageBucket: 'questloco.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMS6jqd2a2SirNHDJv3U-xcaPu7RcIAvA',
    appId: '1:394347356170:android:0ff3508ee2a3187cda3ff3',
    messagingSenderId: '394347356170',
    projectId: 'questloco',
    storageBucket: 'questloco.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnguNlM6zAEHddHPmqgOl84cr8ZLmPUUA',
    appId: '1:394347356170:ios:757525ad74f6a334da3ff3',
    messagingSenderId: '394347356170',
    projectId: 'questloco',
    storageBucket: 'questloco.appspot.com',
    iosClientId: '394347356170-bq881e6v3iri5j951mbo9qlfp0ud3i7q.apps.googleusercontent.com',
    iosBundleId: 'com.example.questloco',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnguNlM6zAEHddHPmqgOl84cr8ZLmPUUA',
    appId: '1:394347356170:ios:757525ad74f6a334da3ff3',
    messagingSenderId: '394347356170',
    projectId: 'questloco',
    storageBucket: 'questloco.appspot.com',
    iosClientId: '394347356170-bq881e6v3iri5j951mbo9qlfp0ud3i7q.apps.googleusercontent.com',
    iosBundleId: 'com.example.questloco',
  );
}