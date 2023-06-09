import 'package:fashionhub/constants.dart';
import 'package:fashionhub/custom_widgets.dart';
import 'package:flutter/material.dart';

class RentTab extends StatelessWidget {
  const RentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: const BoxDecoration(
        gradient: myGradient3
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                child: Text(
                  'Price',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  'Ghc 132,463.00/Year',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: MyButton(
                buttonHeight: 47,
                buttonWidth: 116,
                buttonBorder: 10,
                textSize: 13,
                buttonText: 'Rent Now'),
          )
        ],
      ),
    );
  }
}
