import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

/// Firebase configuration options for the Scribbly Notes app.
///
/// Generated from the Firebase console for project `scribbly-notes`.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not configured for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrtNL-RfzwIBRf9WHjkmneW4j5ywzYWeE',
    appId: '1:150413896225:android:347367005846e3ad229160',
    messagingSenderId: '150413896225',
    projectId: 'scribbly-notes',
    storageBucket: 'scribbly-notes.firebasestorage.app',
  );
}
