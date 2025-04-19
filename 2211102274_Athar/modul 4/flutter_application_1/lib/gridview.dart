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
        appBar: AppBar(title: const Text('GridView Example')),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            buildGridItem("He'd have you all unravel at the", Colors.teal[100]!),
            buildGridItem('Heed not the rabble', Colors.teal[200]!),
            buildGridItem('Sound of screams but the', Colors.teal[300]!),
            buildGridItem('Who scream', Colors.teal[400]!),
            buildGridItem('Revolution is coming...', Colors.teal[500]!),
            buildGridItem('Revolution, they...', Colors.teal[600]!),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
