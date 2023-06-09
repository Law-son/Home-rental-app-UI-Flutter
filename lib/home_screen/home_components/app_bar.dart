// ignore_for_file: prefer_const_constructors

import 'package:fashionhub/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  final String _assetLoc = 'assets/images/chevron_down.png';
  String? selectedItem;
  List<String> dropItems = [
    'Tarkwa',
    'Takoradi',
    'Cape Coast',
    'Kumasi',
    'Tema',
    'Tamale'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
              margin: const EdgeInsets.only(top: 20, left: 15, right: 25),
              child: DropdownButton<String>(
                value: selectedItem,
                icon: Image(image: AssetImage(_assetLoc), width: 18, height: 18,),
                borderRadius: BorderRadius.circular(10),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                },
                items: dropItems.asMap().entries.map((entry) {
                  final index = entry.key;
                  final value = entry.value;
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(fontSize: 18),),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              left: 20,
              top: 5,
              child: Text('Location', style: TextStyle(fontSize: 13, color: Colors.grey),))
            ]
          ),
          Badge(
            alignment: AlignmentDirectional.topEnd,
            child: Icon(MyFlutterApp.notification, size: 21,))
        ],
      ),
    );
  }
}
