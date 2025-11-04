import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 40),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Column(
                            children: [
                              Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Profile info
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Username', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Bio goes here'),
              ],
            ),
          ),
          // Posts grid
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 0, // No posts yet
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}