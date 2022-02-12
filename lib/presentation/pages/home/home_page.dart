import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:helping_hands_sponty/infrastructure/core/constants.dart';
import 'package:helping_hands_sponty/infrastructure/core/private.dart';
import 'package:latlong2/latlong.dart';
import 'package:geodesy/geodesy.dart';

import 'widgets/danger_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final List<LatLng> latlngMarmara = [
  LatLng(40.985750, 29.048961),
  LatLng(40.984681, 29.053392),
  LatLng(40.984179, 29.058588),
  LatLng(40.986382, 29.059618),
  LatLng(40.989767, 29.054550),
  LatLng(40.989961, 29.051544),
  LatLng(40.987487, 29.051247),
];

Polygon polygonMarmara = Polygon(
  points: latlngMarmara,
  borderColor: Colors.black,
  color: Colors.pink.withOpacity(0.5),
  borderStrokeWidth: 2,
);

final List<LatLng> latlngKosuyolu = [
  LatLng(41.005528, 29.028968),
  LatLng(41.011940, 29.032146),
  LatLng(41.013398, 29.024674),
  LatLng(41.012782, 29.020477),
  LatLng(41.007536, 29.024471),
];

Polygon polygonKosuyolu = Polygon(
  points: latlngKosuyolu,
  borderColor: Colors.black,
  color: Colors.pink.withOpacity(0.5),
  borderStrokeWidth: 2,
);

final List<LatLng> latlngYildiz = [
  LatLng(41.043603, 29.013350),
  LatLng(41.047293, 29.022197),
  LatLng(41.048426, 29.020608),
  LatLng(41.049817, 29.019921),
  LatLng(41.050594, 29.017387),
  LatLng(41.052245, 29.014728),
  LatLng(41.051047, 29.013784),
  LatLng(41.050627, 29.012925),
  LatLng(41.047746, 29.012366),
];

Polygon polygonYildiz = Polygon(
  points: latlngYildiz,
  borderColor: Colors.black,
  color: Colors.pink.withOpacity(0.5),
  borderStrokeWidth: 2,
);

class DisasterGatheringSpot {
  const DisasterGatheringSpot({
    Key? key,
    required this.name,
    required this.fullness,
    required this.capacity,
    required this.polygon,
  });

  final String name;
  final int capacity;
  final double fullness;
  final Polygon polygon;
}

DisasterGatheringSpot disasterGatheringSpotMarmara = DisasterGatheringSpot(
  name: "Marmara Universitesi",
  polygon: polygonMarmara,
  capacity: 1250,
  fullness: 85.2,
);

DisasterGatheringSpot disasterGatheringSpotKosuyolu = DisasterGatheringSpot(
  name: "Karacaahmet",
  polygon: polygonKosuyolu,
  capacity: 6200,
  fullness: 45.0,
);

DisasterGatheringSpot disasterGatheringSpotYildiz = DisasterGatheringSpot(
  name: "Yildiz Parki",
  polygon: polygonYildiz,
  capacity: 3000,
  fullness: 63.2,
);

List<DisasterGatheringSpot> disasterGatheringSpots = [
  disasterGatheringSpotMarmara,
  disasterGatheringSpotKosuyolu,
  disasterGatheringSpotYildiz,
];

class _HomePageState extends State<HomePage> {
  MapController mapController = MapController();
  Geodesy geodesy = Geodesy();

  late final Polygon polygonMarmara;

  late final Polygon polygonKosuyolu;

  bool isInDanger = false;

  void toggleDanger() {
    setState(() {
      isInDanger = !isInDanger;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void onPolygon(Offset tapPosition, LatLng point) {
    for (DisasterGatheringSpot disasterGatheringSpot
        in disasterGatheringSpots) {
      bool isGeoPointInPolygon = geodesy.isGeoPointInPolygon(
          point, disasterGatheringSpot.polygon.points);
      if (isGeoPointInPolygon == true) {
        debugPrint("${disasterGatheringSpot.name} $tapPosition");
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            FlutterMap(
              mapController: mapController,
              options: MapOptions(
                interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                center: LatLng(40.980222, 29.036929),
                zoom: 12,
                onTap: (tapPosition, latlng) {
                  onPolygon(tapPosition.global, latlng);
                },
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate: "https://api.mapbox.com/styles/v1/"
                      "{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
                  additionalOptions: {
                    'accessToken': mapboxAccessToken,
                    'id': mapboxId,
                  },
                ),
                PolygonLayerOptions(
                  polygonCulling: false,
                  polygons:
                      disasterGatheringSpots.map((e) => e.polygon).toList(),
                ),
              ],
            ),
            Positioned(
              bottom: 30.0,
              child: DangerButton(
                isInDanger: isInDanger,
                onPressed: () {
                  debugPrint("pressed on button!");
                  toggleDanger();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
