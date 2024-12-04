import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
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

          // Settings Icon Button
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2,),
                  ),
                ],
              ),

              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Settings');
                },
                icon: Icon(
                  Icons.settings,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacer to push the button to the right
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/recording');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'Start Recording',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 20,), // Add space from the edge
              ],
            ),
          )
        ],
      ),
    );
  }
}