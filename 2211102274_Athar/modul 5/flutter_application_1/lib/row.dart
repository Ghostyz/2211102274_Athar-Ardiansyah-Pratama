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
        appBar: AppBar(title: const Text('Row Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(size: 50), // Menyesuaikan ukuran logo agar proporsional
              const SizedBox(width: 10), // Memberi jarak antar elemen
              const Expanded(
                child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. "
                  "Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.",
                  softWrap: true,
                ),
              ),
              const SizedBox(width: 10), // Memberi jarak sebelum ikon
              const Icon(Icons.sentiment_very_satisfied, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
