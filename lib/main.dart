import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OSM Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: SimpleOSM(),
      ),
    );
  }
}

class SimpleOSM extends StatelessWidget {
  const SimpleOSM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller: MapController(
        initPosition: GeoPoint(latitude: 51.0, longitude: 0.0),
      ),
      osmOption: OSMOption(), // Aqui estamos passando uma instância vazia de OSMOption
    );
  }
}
