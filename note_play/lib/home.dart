import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NotePlay',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background Picture
          Positioned.fill(
            child: Image.asset(
              'assets/bg-pic.png',
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/recording');
                  },
                  child: Text('Start Recording')
                ),

                SizedBox(height: 20,),
            
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Settings');
                  },
                  child: Text('Settings')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}