import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GoogleMapController mapController;

  final LatLng _center = const LatLng(-8.3791500, -74.5538700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Symbio Creation Passenger'),
      ),
      body: _mainContent(context)
    );
  }

  Widget _mainContent(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          options: GoogleMapOptions(
            trackCameraPosition: true,
            cameraPosition: CameraPosition(
              target: _center,
              zoom: 13.0,
            ),
            rotateGesturesEnabled: true,
            scrollGesturesEnabled: true,
            tiltGesturesEnabled: true,
          ),
        ),
      ],
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
    controller.addMarker(
      MarkerOptions(
        position: _center,
        infoWindowText: InfoWindowText('Hacienda 1', 'Productos agricolas'),
        icon: BitmapDescriptor.fromAsset('assets/inver3.png', ),
        //icon: BitmapDescriptor.defaultMarker,
      ),
    );

    controller.onMarkerTapped.add(_onMarkerTapped);

  }

  _onMarkerTapped(Marker marker) {
    print(marker.options.infoWindowText.title);
    print(marker.id);
    print("moving... to another page");
    Navigator.pushNamed(context, '/product');
  }

}