import 'package:flutter/material.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  bool isVideo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        title: Text(
          'Recording Mode',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/bg2.png',
              fit: BoxFit.cover,
            )
          ),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SwitchListTile(
                  title: Text(
                    'Video Recording',
                  ),
                  value: isVideo,
                  onChanged: (value) {
                    setState(() {
                      isVideo = value;
                    });
                  }
                ),

                ElevatedButton(
                  onPressed: () {
                    // Enable recording logic (use camera or audio recorder)
                  },
                  child: Text(
                    'Start ${isVideo ? 'Video' : 'Audio'} Recording',
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}