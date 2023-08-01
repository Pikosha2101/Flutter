import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class OSMHome extends StatefulWidget {
  const OSMHome({super.key});

  @override
  State<OSMHome> createState() => _OSMHomeState();
}


class _OSMHomeState extends State<OSMHome> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      
      appBar: AppBar (
        title: const Text ('OSM777'),
      ), // AppBar
      body: Container(
          height: 800,
          child: Center(
            child: OpenStreetMapSearchAndPick(
              center: LatLong(59.94595, 31.03288),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              onPicked: (pickedData) {
              })))
        
        );

  }
}


void _showModal(BuildContext context) {
  showModalBottomSheet(
      context: context, 
      builder: (context) {
        return Container(
          height: 800,
          child: Center(
            child: OpenStreetMapSearchAndPick(
              center: LatLong(59.94595, 31.03288),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              onPicked: (pickedData) {
              }),
          ),
        ); 
  });
}