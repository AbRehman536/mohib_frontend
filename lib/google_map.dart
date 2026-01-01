import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatefulWidget {

   GoogleMapDemo({super.key});

  @override
  State<GoogleMapDemo> createState() => _GoogleMapDemoState();
}

class _GoogleMapDemoState extends State<GoogleMapDemo> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(markerId: MarkerId("1"),
    position:  LatLng(33.5848, 73.0658),
      infoWindow: InfoWindow(title: "Rawalpindi")
    ),
    Marker(markerId: MarkerId("2"),
    position:  LatLng(33.5848, 73.0654),
      infoWindow: InfoWindow(title: "Lahore")
    ),
    Marker(markerId: MarkerId("3"),
    position:  LatLng(33.5848, 73.0650),
      infoWindow: InfoWindow(title: "Karachi")
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: GoogleMap(
        zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          mapType: MapType.terrain,
          markers: markers,
          initialCameraPosition:
          CameraPosition(target: LatLng(33.5848, 73.0658),zoom: 20),
      onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
      },
      ),
    );
  }
}
