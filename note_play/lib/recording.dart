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
        title: Text(
          'Recording Mode',
        ),
      ),

      body: Column(
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
    );
  }
}