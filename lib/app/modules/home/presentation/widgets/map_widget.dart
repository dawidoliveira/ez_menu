import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as lat_lng;

import '../home_state.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    Key? key,
    required this.mapController,
    required this.state,
  }) : super(key: key);

  final MapController mapController;
  final SuccessHomeState? state;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: lat_lng.LatLng(
          (state?.currentPosition.latitude ?? -9.7410729),
          (state?.currentPosition.longitude ?? -36.6495872),
        ),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
          attributionBuilder: (_) {
            return const Text("© OpenStreetMap contributors");
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: lat_lng.LatLng(
                (state?.currentPosition.latitude ?? -9.7410729),
                (state?.currentPosition.longitude ?? -36.6495872),
              ),
              builder: (ctx) => const Icon(Icons.location_on),
            ),
          ],
        ),
      ],
    );
  }
}
