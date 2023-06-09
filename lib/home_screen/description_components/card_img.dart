import 'package:fashionhub/constants.dart';
import 'package:flutter/material.dart';

class CardImg extends StatefulWidget {
  final String img;
  final String name;
  final String location;
  final String bedroom;
  final String bathroom;

  const CardImg(
      {super.key,
      required this.img,
      required this.name,
      required this.location,
      required this.bathroom,
      required this.bedroom});

  @override
  State<CardImg> createState() => _CardImgState();
}

class _CardImgState extends State<CardImg> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 7,
        borderRadius: BorderRadius.circular(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.width - 90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image(
                image: AssetImage(widget.img),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.width - 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: myGradient2),
            ),
            Positioned(
                left: 20,
                top: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(123, 33, 33, 33),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )),
            Positioned(
                right: 20,
                top: 20,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(123, 33, 33, 33),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                    size: 27,
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      widget.location,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.bedroom_parent,
                          size: 18,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '${widget.bedroom} Bedroom',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(
                          Icons.bathroom,
                          size: 18,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '${widget.bathroom} Bathroom',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
