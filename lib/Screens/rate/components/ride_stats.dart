import 'package:flutter/material.dart';

import '../../../constraints.dart';


class RideStats extends StatelessWidget {
  const RideStats({Key? key})

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RideInfo(
          title: 'Price: ',
          value: '\$12.3',
        ),

    );
  }
}

class RideInfo extends StatelessWidget {
  const RideInfo({Key? key,
    required this.title,
    required this.value,

  })
      : super(key: key);

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          children: [

            TextSpan(
                text: 'Price :',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14
                )
            ),

            TextSpan(
              text: ' ',
            ),

            TextSpan(
                text: '\$ 12.3',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14
                )
            ),

          ]
      ),
    );
  }
}

