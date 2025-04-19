import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleMap(),
    );
  }
}

class SimpleMap extends StatefulWidget {
  @override
  _SimpleMapState createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  late GoogleMapController _mapController;

  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 11.0,
    tilt: 0,
    bearing: 0,
  );

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void _goToNewLocation() {
    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(37.7749, -122.4194), // Contoh: San Francisco
          zoom: 14.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps Demo')),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        onMapCreated: _onMapCreated,
        myLocationEnabled: true, // Menampilkan lokasi pengguna
        myLocationButtonEnabled: true, // Tombol lokasi
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNewLocation,
        child: Icon(Icons.location_pin),
      ),
    );
  }
}
