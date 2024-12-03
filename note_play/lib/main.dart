import 'package:flutter/material.dart';
import 'home.dart';
import 'recording.dart';
import 'results.dart';

void main() {
  runApp(NotePlayApp());
}

class NotePlayApp extends StatelessWidget {
  const NotePlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NotePlay',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/recording': (context) => RecordingScreen(),
        '/results': (context) => ResultsScreen(),
      },
    );
  }
}
