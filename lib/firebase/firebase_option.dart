

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyD9gfAMl5z4C7tMHZ_MYOSnxfh-FExRV4E',
      appId: '1:247494612977:android:9ddb2bdd646d0ae4bc1650',
      messagingSenderId: '247494612977',
      projectId: 'coffee-shop-aa5e4',
      storageBucket: 'coffee-shop-aa5e4.firebasestorage.app',
      databaseURL:
      'https://coffee-shop-aa5e4-default-rtdb.firebaseio.com/');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyD9gfAMl5z4C7tMHZ_MYOSnxfh-FExRV4E',
      appId: '1:247494612977:android:9ddb2bdd646d0ae4bc1650',
      messagingSenderId: '247494612977',
      projectId: 'coffee-shop-aa5e4',
      storageBucket: 'coffee-shop-aa5e4.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
      'https://coffee-shop-aa5e4-default-rtdb.firebaseio.com/');
}