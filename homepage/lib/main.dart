import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

void main() {
  GoogleMap.init('AIzaSyCEOPiQY9fOygAaZagkgKzNfQGhCj7lZzE');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SampleHomePage());
}

class SampleHomePage extends StatefulWidget {
  @override
  _SampleHomePageState createState() => _SampleHomePageState();
}

class _SampleHomePageState extends State<SampleHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text('Map Demo '),
        ),
        backgroundColor: Colors.grey.withOpacity(0.2),
        body: SafeArea(
            child: Stack(
          children: <Widget>[_buildGoogleMap(),
          // _buildTiles()
          ],
        )),
      ),
    );
  }

  // Widget _buildTiles() {
  //   return Positioned(
  //         child: Container(
  //       margin: EdgeInsets.all(10),
  //       child: ListView(
  //         scrollDirection: Axis.horizontal,
  //         children: [
  //           Card(
  //               elevation: 1,
  //               child: Container(
  //                 padding: EdgeInsets.all(10.0),
  //                 color: Colors.white,
  //               )),
  //           Card(
  //               elevation: 1,
  //               child: Container(
  //                 padding: EdgeInsets.all(10.0),
  //                 color: Colors.white,
  //               )),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildGoogleMap() {
    return GoogleMap(
      markers: {Marker(GeoCoord(-1.28333, 36.81667))},
      initialPosition: GeoCoord(-1.28333, 36.81667),
      initialZoom: 10,
      interactive: true,
    );
  }
}
