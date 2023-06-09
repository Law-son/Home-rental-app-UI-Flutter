import 'package:flutter/material.dart';

class DescriptionGallery extends StatefulWidget {
  const DescriptionGallery({super.key});

  @override
  State<DescriptionGallery> createState() => _DescriptionGalleryState();
}

class _DescriptionGalleryState extends State<DescriptionGallery> {
  List galleryItems = [
    'assets/images/interior1.jpg',
    'assets/images/interior2.jpg',
    'assets/images/interior3.jpg',
    'assets/images/interior4.jpg',
    'assets/images/interior5.jpg',
    'assets/images/interior6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
          child: Text(
            'Gallery',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 90,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: galleryItems.length - 2,
            itemBuilder: ((context, index) {
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 78,
                      height: 80,
                      // margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          ),
                      child: Image(
                        image: AssetImage(galleryItems[index]), fit: BoxFit.cover,),
                    ),
                  ),
                  const SizedBox(width: 10)
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
