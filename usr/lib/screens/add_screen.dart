import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Share', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_a_photo, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text('Add a photo or video'),
            SizedBox(height: 10),
            Text('Tap to select from gallery or camera'),
          ],
        ),
      ),
    );
  }
}