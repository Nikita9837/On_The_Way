import 'package:flutter/material.dart';

import '../../../constraints.dart';


class RideStats extends StatelessWidget {
  const RideStats({Key? key})

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RideInfo(
          title: 'Time: ',
          value: '15 minutes',
        ),

        // SizedBox(width: kDefaultPadding),
        //
        // RideInfo(
        //   title: 'Price: ',
        //   value: '\$12.3',
        // ),
        //
        // SizedBox(width: kDefaultPadding),
        //
        // RideInfo(
        //   title: 'Distance: ',
        //   value: '15 km',
        // )
      ],
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
                text: 'Time :',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            ),

            TextSpan(
                text: ' ',
            ),

            TextSpan(
                text: '15 minutes',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            ),

            TextSpan(
              text: '     ',
            ),

            TextSpan(
                text: 'Price :',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            ),

            TextSpan(
              text: ' ',
            ),

            TextSpan(
                text: '\$ 12.3',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            ),

            TextSpan(
              text: '      ',
            ),

            TextSpan(
                text: 'Distance :',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            ),

            TextSpan(
              text: ' ',
            ),

            TextSpan(
                text: '12 km',
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 14
                )
            )
          ]
      ),
    );
  }
}

