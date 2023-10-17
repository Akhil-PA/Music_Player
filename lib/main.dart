import 'package:flutter/material.dart';
// import 'package:music_player/navigation/bottomNav.dart';
import 'package:music_player/pages/splashscreen.dart'; // Update with your project's path
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musik',
      home: SplashScreen(),
    );
  }
}
