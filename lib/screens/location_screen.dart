import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  late LocationData currentPosition;
  late GoogleMapController mapController;
  Location location = Location();
  LatLng initialcameraposition = LatLng(13.911131, 100.361995);

  late Marker marker;
  List<Marker> markers = <Marker>[];

  String myLocation = "no";
  late BitmapDescriptor customIcon = BitmapDescriptor.defaultMarker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Current Locaiton"), actions: [
        Row(children: <Widget>[IconButton(
          onPressed: (){

          }, icon: Icon(Icons.save))],)
      ],),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: initialcameraposition,
          zoom: 5,
        ),
        markers: Set<Marker>.of(markers),
        mapType: MapType.normal,
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: getLoc, label: Text('Me'),icon: Icon(Icons.near_me),),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    print("oncreted ${initialcameraposition.latitude} : ${initialcameraposition.longitude}");
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: initialcameraposition,zoom: 12)
      )
    );
  }

  getLoc() async {
    myLocation ="yes";
    print("myLocation $myLocation");
    bool _serviceEnable;
    PermissionStatus _permissionGranted;

    _serviceEnable = await location.serviceEnabled();
    if (!_serviceEnable) {
      _serviceEnable = await location.requestService();
      if(!_serviceEnable){
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if(_permissionGranted != PermissionStatus.granted){
        return;
      }
    }

    currentPosition = await location.getLocation();
    double? latitude = currentPosition.latitude;
    double? longitude = currentPosition.longitude;

    location.onLocationChanged.listen((LocationData currentPosition) {

      setState(() {
        print("Current Loc ${currentPosition.latitude} : ${currentPosition.longitude}");
        initialcameraposition = LatLng(latitude!, longitude!);
        mapController.moveCamera(CameraUpdate.newLatLng(LatLng(latitude!, longitude!)));

        setMarkers();
      });
    });
  }



  setMarkers() {
    markers.add(
      Marker(
        markerId: MarkerId("Home"),
        position: initialcameraposition,
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: myLocation)
      )
    );
    setState(() {
      
    });
  }
}

//AIzaSyBLRwt6HxN8FMneFgtkOrZoMzw9hvW19Nk
