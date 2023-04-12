import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

import '../controllers/location_controller.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final LocationController currentLocation = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var lat = currentLocation.locationData.latitude;
      var lng = currentLocation.locationData.longitude;
      if (lat == null || lng == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return FlutterMap(
          options: MapOptions(
            center: LatLng(lat, lng),
            zoom: 17.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: const ['a', 'b', 'c'],
            ),
            MarkerLayer(
              markers: [
                Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(lat, lng),
                    builder: (ctx) => const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        )),
              ],
            ),
          ],
        );
      }
    });
  }
}
