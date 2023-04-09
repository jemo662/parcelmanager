import 'package:flutter/material.dart';
import 'package:flutter_tricks/dispatch.dart';
import 'package:flutter_tricks/firebase_options.dart';
import 'package:flutter_tricks/login.dart';
import 'package:flutter_tricks/receive.dart';
import 'package:firebase_core/firebase_core.dart';
import 'mainpage.dart';

void main() async {
  // initialize the Firebase app
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: ParcelDispatchPage());
  }
}
