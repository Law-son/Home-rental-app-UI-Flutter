import 'package:fashionhub/constants.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionDetails extends StatelessWidget {
  const DescriptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Padding(
             padding: EdgeInsets.only(top: 5, bottom: 4),
             child: Text('Description',
                     style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
                     ),
                     ),
           ),
          ReadMoreText(
            'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. It has 5 bedrooms and 4 bathrooms with other necessary apartments.',
            colorClickableText: mytheme,
            trimLines: 2,
            trimLength: 100,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700]
            ),
          )
        ],
      ),
    );
  }
}
