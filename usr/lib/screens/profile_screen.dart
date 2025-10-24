import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://via.placeholder.com/120'),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(labelText: 'Name'),
              controller: TextEditingController(text: 'John Doe'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(labelText: 'Age'),
              controller: TextEditingController(text: '25'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(labelText: 'Bio'),
              maxLines: 3,
              controller: TextEditingController(text: 'Hello, I love adventures!'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Save profile changes
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile updated!')),
                );
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}