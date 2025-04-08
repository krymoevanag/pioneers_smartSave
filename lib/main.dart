import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDu300r6sbvQzHwOtVWkiECF8loThjNuc4",
        authDomain: "pss-finapp.firebaseapp.com",
        projectId: "pss-finapp",
        storageBucket: "pss-finapp.firebasestorage.app",
        messagingSenderId: "313100922951",
        appId: "1:313100922951:web:635b27f6617d1d9d2b0162",
        measurementId: "G-32DFV70RN3",
      ),
    );
  } else {
    await Firebase.initializeApp(); // For Android/iOS
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pioneers SmartSave',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginScreen(),
    );
  }
}
