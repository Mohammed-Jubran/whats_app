import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final List<Marker> _list = [
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(32.10314664281548, 36.181378994989295),
    ),
    const Marker(
      markerId: MarkerId("2"),
      position: LatLng(32.08838194272483, 36.18779498902661),
    ),
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(32.10016254391494, 36.186030148219366),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: _list.toSet(),
        initialCameraPosition: const CameraPosition(
            target: LatLng(32.102873992841005, 36.181228791294295),zoom: 5000),
      ),
    );
  }
}
