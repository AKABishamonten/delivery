import 'package:delivery/providers/map_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class LocationBar extends StatefulWidget {
  const LocationBar({super.key});

  @override
  State<LocationBar> createState() => _LocationBarState();
}


class _LocationBarState extends State<LocationBar> {
  @override
  Widget build(BuildContext context) {
    MapViewModel provider = Provider.of<MapViewModel>(context, listen: false);
    return Container(
      color: Color.fromARGB(255, 243, 244, 212),
      padding: EdgeInsets.only(top: 50, left: 20, bottom: 40),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "/LocationScreen");
        },
        child: Row(
          children: [
            Icon(Icons.location_on,size: 30, color: Colors.orange,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Current Location', style: TextStyle(fontSize: 20, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}