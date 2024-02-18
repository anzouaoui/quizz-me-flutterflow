import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBzM-E9ZbVMJrmpZDyv-kb8kkeevS7iFt0",
            authDomain: "quizz-me-1bf0b.firebaseapp.com",
            projectId: "quizz-me-1bf0b",
            storageBucket: "quizz-me-1bf0b.appspot.com",
            messagingSenderId: "748627326819",
            appId: "1:748627326819:web:87f06542d5240b94938556"));
  } else {
    await Firebase.initializeApp();
  }
}
