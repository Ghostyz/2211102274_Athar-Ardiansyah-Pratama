import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema warna lebih menarik
      ),
      home: const MyFormPage(),
    );
  }
}

class MyFormPage extends StatelessWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Styling Demo')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Search",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
              prefixIcon: Icon(Icons.search), // Tambahan ikon search
            ),
          ),
          const SizedBox(height: 20), // Jarak antar form

          Text(
            "Username",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
              prefixIcon: Icon(Icons.person), // Tambahan ikon user
            ),
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              final searchInput = _searchController.text;
              final usernameInput = _usernameController.text;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Search: $searchInput, Username: $usernameInput")),
              );
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
