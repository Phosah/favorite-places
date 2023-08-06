import 'package:flutter/material.dart';

import 'package:favorite_places/model/place_item.dart';

class PlaceDetailsScreeen extends StatelessWidget {
  const PlaceDetailsScreeen({super.key, required this.place});

  final PlaceItem place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )
        ],
      ),
    );
  }
}
