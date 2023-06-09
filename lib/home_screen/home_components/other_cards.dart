import 'package:fashionhub/constants.dart';
import 'package:fashionhub/home_screen/description_page.dart';
import 'package:fashionhub/models.dart';
import 'package:flutter/material.dart';

class OtherCards extends StatefulWidget {
  const OtherCards({super.key});

  @override
  State<OtherCards> createState() => _OtherCardsState();
}

class _OtherCardsState extends State<OtherCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(
          itemCount: otherCards.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (concept, index) {
            final otherCard = otherCards[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DescriptionPage(
                          img: otherCard.img,
                          name: otherCard.name,
                          location: 'Silicon Valley',
                          bathroom: '4',
                          bedroom: '5',
                        )),
              );
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  margin: (index == 2)
                      ? const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 25)
                      : const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Row(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage(otherCard.img),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            otherCard.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              otherCard.amount,
                              style: const TextStyle(
                                  color: mytheme,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bedroom_parent_outlined,
                                size: 17,
                                color: Colors.grey[700],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  otherCard.bedroom,
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(width: 30,),
                              Icon(
                                Icons.bathroom_outlined,
                                size: 17,
                                color: Colors.grey[700],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  otherCard.bathroom,
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            );
          },
        )
      ],
    );
  }
}
