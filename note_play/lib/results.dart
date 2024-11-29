import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Performance Score'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Accuracy: 95%',
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            Text(
              'Speed: 120 BPM',
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // Logic for saving the recording
              },
              child: Text(
                'Save Recording',
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // Logic for sharing the recording
              },
              child: Text(
                'Share Recording',
              ),
            ),
          ],
        ),
      ),
    );
  }
}