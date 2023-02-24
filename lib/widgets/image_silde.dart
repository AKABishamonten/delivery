import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery/models/banner.dart';
import 'package:flutter/material.dart';

class ImageSilde extends StatefulWidget {
  const ImageSilde({super.key});

  @override
  State<ImageSilde> createState() => _ImageSildeState();
}

class _ImageSildeState extends State<ImageSilde> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          height: 200,
          child: PageView.builder(
            itemCount: appBannerList.length,
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(appBannerList[index].thumbnailUrl),
                    fit: BoxFit.cover
                  )
                ),
              );
            }),
        )
      ],
    );
  }
}