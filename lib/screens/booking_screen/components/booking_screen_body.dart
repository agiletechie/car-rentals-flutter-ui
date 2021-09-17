import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geocode/geocode.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookingScreenBody extends StatefulWidget {
  @override
  State<BookingScreenBody> createState() => _BookingScreenBodyState();
}

class _BookingScreenBodyState extends State<BookingScreenBody> {
  String sourceAddress, destAddress;
  double sourceLat, sourceLong;
  double destLat, destLong;
  double zoom;
  final firestore = FirebaseFirestore.instance;

  void getLatLong(String address, String source) async {
    GeoCode geoCode = GeoCode();
    try {
      Coordinates addressLatLong =
          await geoCode.forwardGeocoding(address: address);

      print("Latitude: ${addressLatLong.latitude}");
      print("Longitude: ${addressLatLong.longitude}");

      if (source == 'source') {
        setState(() {
          sourceLat = addressLatLong.latitude;
          sourceLong = addressLatLong.longitude;
          zoom = 13;
        });
      } else {
        setState(() {
          destLat = addressLatLong.latitude;
          destLong = addressLatLong.longitude;
        });
      }
    } catch (e) {
      print(e);
    }
    // return LatLng(12.97, 77.57);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Quick Ride',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextFormField(
            onFieldSubmitted: (value) {
              sourceAddress = value;
              getLatLong(value, 'source');
            },
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              hintText: "To",
              contentPadding: EdgeInsets.all(20.0),
              // labelText: "To",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
          child: TextFormField(
            onFieldSubmitted: (value) {
              destAddress = value;
              getLatLong(value, 'destination');
            },
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              hintText: "From",
              contentPadding: EdgeInsets.all(20.0),
              // labelText: "To",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 5.0,
          color: Colors.deepPurple.shade100,
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(sourceLat ?? 12.97, sourceLong ?? 77.57),
                    zoom: zoom ?? 10.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                    ),
                    MarkerLayerOptions(
                      rotate: true,
                      markers: [
                        if (sourceLat != null && sourceLong != null)
                          Marker(
                            width: 80.0,
                            height: 80.0,
                            point: LatLng(sourceLat, sourceLong),
                            builder: (ctx) => Icon(
                              Icons.location_pin,
                              size: 44.0,
                              color: Colors.red.shade800,
                            ),
                          ),
                        if (destLat != null && destLong != null)
                          Marker(
                            width: 80.0,
                            height: 80.0,
                            point: LatLng(destLat, destLong),
                            builder: (ctx) => Icon(
                              Icons.location_pin,
                              size: 44.0,
                              color: Colors.red.shade800,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              if (sourceAddress != null && destAddress != null) {
                firestore.collection('bookings').add(
                  {
                    'name': 'Shubham',
                    'email': 'shubham@gamil.com',
                    'sourceAddress': sourceAddress,
                    'destAddress': destAddress,
                  },
                );
              }
            },
            child: Text(
              '+  CONFIRM BOOKING',
              style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 1.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              primary: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(14.0),
              elevation: 5.0,
            ),
          ),
        ),
      ],
    );
  }
}
