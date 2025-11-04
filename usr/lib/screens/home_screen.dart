import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Mock data for 10 posts
        itemBuilder: (context, index) {
          return PostWidget(index: index);
        },
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final int index;

  const PostWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post header
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('U${index + 1}'),
          ),
          title: Text('User ${index + 1}'),
          subtitle: const Text('Location'),
          trailing: const Icon(Icons.more_vert),
        ),
        // Post image
        Container(
          height: 300,
          color: Colors.grey[300],
          child: const Center(
            child: Icon(Icons.image, size: 100),
          ),
        ),
        // Post actions
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.comment),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        // Likes and comments
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Liked by user1 and others'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RichText(
            text: const TextSpan(
              text: 'User ${1} ',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'This is a sample post caption.',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}