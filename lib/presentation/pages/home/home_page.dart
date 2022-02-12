import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:helping_hands_sponty/infrastructure/core/constants.dart';
import 'package:helping_hands_sponty/infrastructure/core/private.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MapController mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          //controller: mapController,
          interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
          center: LatLng(40.980222, 29.036929),
        ),
        layers: [
          ///This link is useful if we ever need to use a new MapBox style. The guide is very straightforward
          ///https://docs.mapbox.com/help/troubleshooting/migrate-legacy-static-tiles-api/?/=blog&utm_source=mapbox-blog&utm_campaign=blog%7Cmapbox-blog%7Cdoc-migrate-static%7Cdeprecating-studio-classic-styles-d8892ac38cb4-20-03&utm_term=doc-migrate-static&utm_content=deprecating-studio-classic-styles-d8892ac38cb4
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/"
                "{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
            additionalOptions: {
              'accessToken': mapboxAccessToken,
              'id': mapboxId,
            },
          ),
        ],
      ),
    );
  }
}
