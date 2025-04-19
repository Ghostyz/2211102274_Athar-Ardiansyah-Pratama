import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Example')),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            buildListItem('Entry A', Colors.amber[600]!),
            buildListItem('Entry B', Colors.amber[500]!),
            buildListItem('Entry C', Colors.amber[100]!),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String text, Color color) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
