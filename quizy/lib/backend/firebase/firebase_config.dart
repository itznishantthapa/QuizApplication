import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCMD1n29vSVlDmg2entOIb3VuxPW0_i3_A",
            authDomain: "quizy-3vqjs5.firebaseapp.com",
            projectId: "quizy-3vqjs5",
            storageBucket: "quizy-3vqjs5.appspot.com",
            messagingSenderId: "867131947335",
            appId: "1:867131947335:web:29873ced5ee5ada8be7462"));
  } else {
    await Firebase.initializeApp();
  }
}
