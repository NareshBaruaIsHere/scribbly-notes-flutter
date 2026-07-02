import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Firebase configuration options for the Scribbly Notes app.
///
/// Generated from the Firebase console for project `scribbly-notes`.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not configured for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC6AWC2wsbCNgFFkzTNbT-YHbkY10WDqRg',
    appId: '1:150413896225:web:61b8ad31a9b19601229160',
    messagingSenderId: '150413896225',
    projectId: 'scribbly-notes',
    authDomain: 'scribbly-notes.firebaseapp.com',
    storageBucket: 'scribbly-notes.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrtNL-RfzwIBRf9WHjkmneW4j5ywzYWeE',
    appId: '1:150413896225:android:347367005846e3ad229160',
    messagingSenderId: '150413896225',
    projectId: 'scribbly-notes',
    storageBucket: 'scribbly-notes.firebasestorage.app',
  );
}
