import 'package:fashionhub/home_screen/description_components/card_img.dart';
import 'package:fashionhub/home_screen/description_components/description_gallery.dart';
import 'package:fashionhub/home_screen/description_components/description_text.dart';
import 'package:fashionhub/home_screen/description_components/map.dart';
import 'package:fashionhub/home_screen/description_components/owner_tab.dart';
import 'package:fashionhub/home_screen/description_components/rent_tab.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  final String img;
    final String name;
    final String location;
    final String bedroom;
    final String bathroom;

    const DescriptionPage(
        {super.key,
        required this.img,
        required this.name,
        required this.location,
        required this.bathroom,
        required this.bedroom});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: SafeArea(
            child: Stack(
              children: [Scaffold(
                    body: SingleChildScrollView(
                scrollDirection: Axis.vertical, 
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    CardImg(
                      img: widget.img,
                      name: widget.name,
                      location: widget.location,
                      bathroom: widget.bathroom,
                      bedroom: widget.bedroom,
                    ),
                    const DescriptionDetails(),
                    const OwnerTab(),
                    const DescriptionGallery(),
                    const LocationMap()
                  ])),
                  ),
                  const Positioned(
                    bottom: 0,
                    child: RentTab())
                  ]
            )),
      ),
    );
  }
}
