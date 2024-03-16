import 'package:flutter/material.dart';
import 'package:project_google_maps/widget/custom_google_map.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Google Maps',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      body: CustomGoogleMap(),
    );
  }
}
