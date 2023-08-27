import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(-6.601884, 106.805726);

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late GoogleMapController _mapController;
  final Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition:
              const CameraPosition(target: currentLocation, zoom: 14),
          onMapCreated: (controller) {
            _mapController = controller;
            addMarker("location", currentLocation);
          },
          markers: _markers.values.toSet()),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
    );
    _markers[id] = marker;
    setState(() {});
  }
}
