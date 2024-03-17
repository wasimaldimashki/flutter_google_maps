// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;

  @override
  void initState() {
    initialCameraPosition = const CameraPosition(
      target: LatLng(33.50983999222655, 36.275412844717195),
      zoom: 10,
    );
    initMarker();
    super.initState();
  }

  late GoogleMapController googleMapController;

  Set<Marker> markers = {};
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: (controller) {
            googleMapController = controller;
            initMapStyle();
          },
          // cameraTargetBounds: CameraTargetBounds(
          //   LatLngBounds(
          //     northeast: const LatLng(33.819855302769184, 36.91148579693683),
          //     southwest: const LatLng(33.407291189294995, 35.849121522403586),
          //   ),
          // ),
          initialCameraPosition: initialCameraPosition,
          markers: markers,
        ),
        // Positioned(
        //   bottom: 16,
        //   left: 16,
        //   right: 16,
        //   child: ElevatedButton(
        //     onPressed: () {
        //       // CameraPosition newLocation = const CameraPosition(
        //       //     target: LatLng(55.97757914354403, 37.58536222497034),
        //       //     zoom: 10);
        //       googleMapController.animateCamera(CameraUpdate.newLatLng(
        //           const LatLng(55.97757914354403, 37.58536222497034)));
        //     },
        //     child: const Text('Change Location'),
        //   ),
        // )
      ],
    );
  }

  void initMapStyle() async {
    //Step num 1-Load String
    var nightMapStyle = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style/night_map_style.json');
    //Step num 2-Google map update style
    googleMapController.setMapStyle(nightMapStyle);
  }

  void initMarker() {
    var myMarker = const Marker(
      markerId: MarkerId('1'),
      position: LatLng(33.50983999222655, 36.275412844717195),
    );

    markers.add(myMarker);
    setState(() {});
  }
}



//Zoom Range

//World view 0-->3
//Country view 4-->6
//City view 10-->12
//street view 13-->17
//building view 18-->20
