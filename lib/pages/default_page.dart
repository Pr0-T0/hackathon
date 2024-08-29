import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Emergency Assistance',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'If you need immediate help, press the SOS button below to send a signal.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Implement SOS signal functionality here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('SOS signal sent!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color
                minimumSize: const Size(200, 200), // Increase the button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100), // Make it round
                ),
                elevation: 10, // Add shadow effect to the button
              ),
              child: const Text(
                'SOS',
                style: TextStyle(
                  fontSize: 36, // Increase text size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0), // Position of the shadow
                      blurRadius: 5.0, // Blur effect of the shadow
                      color: Colors.black54, // Shadow color
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DefaultPage(),
  ));
}
