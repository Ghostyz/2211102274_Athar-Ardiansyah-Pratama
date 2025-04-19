import 'package:flutter/material.dart';
import 'models/user.dart'; // Import model

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const AlbumFormScreen());
  }
}

class AlbumFormScreen extends StatefulWidget {
  const AlbumFormScreen({super.key});

  @override
  State<AlbumFormScreen> createState() => _AlbumFormScreenState();
}

class _AlbumFormScreenState extends State<AlbumFormScreen> {
  final TextEditingController _titleController = TextEditingController();
  Album? album;

  void createAlbum() {
    setState(() {
      album = Album(userId: 1, id: 13, title: _titleController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Album Model Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Enter Album Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: createAlbum, 
              child: const Text('Create Album'),
            ),
            const SizedBox(height: 20),
            if (album != null)
              Column(
                children: [
                  Text('User ID: ${album!.userId}'),
                  Text('Album ID: ${album!.id}'),
                  Text('Title: ${album!.title}'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
