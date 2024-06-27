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
    apiKey: 'AIzaSyDqCi1DsaOOe2TE4RtLCX5c9PUmGZ1OfwY',
    appId: '1:550706101737:web:2e84f3b4121994e994df78',
    messagingSenderId: '550706101737',
    projectId: 'zulfaniz-21137',
    authDomain: 'zulfaniz-21137.firebaseapp.com',
    storageBucket: 'zulfaniz-21137.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVgggqEQ53kSk7bl8QpjdXoFFggb2rDvI',
    appId: '1:550706101737:android:57555fe719303f7c94df78',
    messagingSenderId: '550706101737',
    projectId: 'zulfaniz-21137',
    storageBucket: 'zulfaniz-21137.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAl5sVlU_e71l7sLNL4Ken5Qsk3tWbztP4',
    appId: '1:550706101737:ios:e2e4d6849bb51e2994df78',
    messagingSenderId: '550706101737',
    projectId: 'zulfaniz-21137',
    storageBucket: 'zulfaniz-21137.appspot.com',
    androidClientId: '550706101737-e1m0920778c546ggplqvs672rro7qc0e.apps.googleusercontent.com',
    iosClientId: '550706101737-814hlvis0irar1calo6h1dgaa3s6vm6g.apps.googleusercontent.com',
    iosBundleId: 'com.example.zulfanizStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAl5sVlU_e71l7sLNL4Ken5Qsk3tWbztP4',
    appId: '1:550706101737:ios:e2e4d6849bb51e2994df78',
    messagingSenderId: '550706101737',
    projectId: 'zulfaniz-21137',
    storageBucket: 'zulfaniz-21137.appspot.com',
    androidClientId: '550706101737-e1m0920778c546ggplqvs672rro7qc0e.apps.googleusercontent.com',
    iosClientId: '550706101737-814hlvis0irar1calo6h1dgaa3s6vm6g.apps.googleusercontent.com',
    iosBundleId: 'com.example.zulfanizStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqCi1DsaOOe2TE4RtLCX5c9PUmGZ1OfwY',
    appId: '1:550706101737:web:e88baad0c3dd079d94df78',
    messagingSenderId: '550706101737',
    projectId: 'zulfaniz-21137',
    authDomain: 'zulfaniz-21137.firebaseapp.com',
    storageBucket: 'zulfaniz-21137.appspot.com',
  );

}