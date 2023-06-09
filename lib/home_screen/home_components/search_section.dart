import 'package:fashionhub/constants.dart';
import 'package:fashionhub/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final String _assetLoc = 'assets/images/settings.png';

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            height: 55,
             child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(MyFlutterApp.search),
                label: const Text('Search for apartments'),
                labelStyle: const TextStyle(fontSize: 14),
                filled: true,
                fillColor: const Color.fromRGBO(243, 243, 243, 1),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
                     ),
           ),
           Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              gradient: myGradient,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Transform.rotate(
              angle: 190,
              child: Center(
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: Image(
                    image: AssetImage(_assetLoc),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
           )
        ],
      ),
    );
  }
}