import 'package:fashionhub/constants.dart';
import 'package:flutter/material.dart';

final assetLoc = 'assets/images/avatar.png';

class OwnerTab extends StatelessWidget {
  const OwnerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 20, top: 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.grey[400],
            backgroundImage: AssetImage(assetLoc),
          ),
          title: const Text(
            'John Doe',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'Owner',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          trailing: SizedBox(
            width: 50,
            child: Container(
              width: 25,
              height: 40,
              decoration: BoxDecoration(
                  color: mytheme, borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
