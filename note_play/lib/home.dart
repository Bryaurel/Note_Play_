import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to NotePlay',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recording');
              },
              child: Text('Start Recording')
            ),
            
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Settings');
              },
              child: Text('Settings')
            ),
          ],
        ),
      ),
    );
  }
}