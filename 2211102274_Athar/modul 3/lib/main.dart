import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Example')),
        body: Center( //  Membuat Container berada di tengah layar
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 100.0,  //  Ukuran diperbesar agar lebih terlihat
            height: 100.0, 
            child: const Center(child: Text("Box")), //  Teks tetap berada di tengah Container
          ),
        ),
      ),
    );
  }
}
