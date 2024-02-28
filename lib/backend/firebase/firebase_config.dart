import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC82t54X9vVEwHFKKw9VagF9t1D99MksbA",
            authDomain: "drip-1b506.firebaseapp.com",
            projectId: "drip-1b506",
            storageBucket: "drip-1b506.appspot.com",
            messagingSenderId: "1022667513638",
            appId: "1:1022667513638:web:ff95c25072d845d02dabe7",
            measurementId: "G-XR7F9GBWVP"));
  } else {
    await Firebase.initializeApp();
  }
}
