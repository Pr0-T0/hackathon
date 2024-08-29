import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Replace with actual image URL
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'This is the user bio, where they can share a little about themselves.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24.0), // Added extra space after bio
            ElevatedButton(
              onPressed: () {
                // Navigate to settings or edit profile page
              },
              child: const Text('Edit Profile'),
            ),
            const SizedBox(
                height: 24.0), // Extra space between button and new section
            Divider(color: Colors.grey.shade300), // Divider for separation
            const SizedBox(height: 16.0),
            const Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Limit the number of activities shown
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.green.shade400,
                    ),
                    title: Text('Activity ${index + 1}'),
                    subtitle: Text('Details about activity ${index + 1}.'),
                    onTap: () {
                      // Handle activity tap
                    },
                  );
                },
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
    home: Profilepage(),
  ));
}
