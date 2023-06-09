import 'package:flutter/material.dart';

class NearYou extends StatelessWidget {
  const NearYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const Text('Near Your Location',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          ),
          Text('See more',
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 14,
          ),
          )
        ],
      )),
    );
  }
}