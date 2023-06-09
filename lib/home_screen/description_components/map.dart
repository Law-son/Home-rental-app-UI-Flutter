import 'package:flutter/material.dart';

const assetLoc = 'assets/images/map.png';

class LocationMap extends StatelessWidget {
  const LocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 10,),
        width: MediaQuery.of(context).size.width - 50,
        height: 110,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: const Image(image: AssetImage(assetLoc), fit: BoxFit.cover,),
      ),
    );
  }
}
