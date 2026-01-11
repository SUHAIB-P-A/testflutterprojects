import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveTrackingPage extends StatefulWidget {
  const LiveTrackingPage({super.key});

  @override
  State<LiveTrackingPage> createState() => _LiveTrackingPageState();
}

class _LiveTrackingPageState extends State<LiveTrackingPage> {
  LatLng soureceLocation = const LatLng(37.33500926, -122.03272188);
  LatLng destinationLocation = const LatLng(37.33429383, -122.06600055);

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;

  void setCoustomIcon() async {
    try {
      final resulticon = await Future.wait([
        BitmapDescriptor.asset(
          ImageConfiguration(size: Size(15, 18)),
          "assets/images/source.png",
        ),
        BitmapDescriptor.asset(
          ImageConfiguration(size: Size(15, 18)),
          "assets/images/destination.png",
        ),
      ]);

      setState(() {
        sourceIcon = resulticon[0];
        destinationIcon = resulticon[1];
      });
    } catch (e) {
      log(e.toString());
    }
    
  }

  @override
  void initState() {
    setCoustomIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: soureceLocation,
          zoom: 13.5,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("source"),
            position: soureceLocation,
            icon: sourceIcon,
          ),
          Marker(
            markerId: const MarkerId("destination"),
            position: destinationLocation,
            icon: destinationIcon,
          ),
        },
      ),
    );
  }
}
