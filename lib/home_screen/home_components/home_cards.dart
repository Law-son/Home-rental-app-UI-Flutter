import 'package:fashionhub/constants.dart';
import 'package:fashionhub/home_screen/description_page.dart';
import 'package:fashionhub/models.dart';
import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  final locationPin = 'assets/images/location_pin.png';
  const HomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width,
      height: 263,
      child: ListView.builder(
        itemCount: homeCards.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final homeCard = homeCards[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DescriptionPage(
                          img: homeCard.img,
                          name: homeCard.name,
                          location: homeCard.location,
                          bathroom: '4',
                          bedroom: '5',
                        )),
              );
            },
            child: Center(
              child: Padding(
                padding: (index == 3)
                    ? const EdgeInsets.only(left: 15, right: 15)
                    : const EdgeInsets.only(left: 15),
                child: Material(
                  elevation: 3.5,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(homeCard.img),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: myGradient2),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Column(
                          children: [
                            Text(
                              homeCard.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13.5,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              homeCard.location,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.5,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: 15,
                          top: 15,
                          child: Container(
                            width: 60,
                            height: 23,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(143, 56, 56, 56),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(50),
                                    right: Radius.circular(50))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Image(
                                    image: AssetImage(locationPin),
                                    width: 19,
                                    height: 18,
                                  ),
                                ),
                                Text(
                                  homeCard.distance,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
