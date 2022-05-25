import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:on_the_way/Screens/rate/components/custom_app_bar.dart';
import 'package:on_the_way/Screens/rate/components/app_header.dart';
import 'package:on_the_way/Screens/rate/components/ride_stats.dart';
import 'package:on_the_way/constraints.dart';
import 'package:on_the_way/proportionate.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),

            Positioned(
              top: -380,
              left: -187,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset('images/bg.png'),
              )
            ),

            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(kDefaultPadding * 2),
                child: Column(
                  children: [
                    CustomAppBar(),

                    SizedBox(height: kDefaultPadding*2),

                    Image.asset(
                      'images/two.png',
                      width: 166,
                    ),

                    SizedBox(height: kDefaultPadding),

                    Text(
                      'Your Riding Partner: ',
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 14
                      ),
                    ),

                    Text(
                      'Rajat Kapoor',
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    Divider(
                      color: kTextLightColor,
                    ),

                    SizedBox(height: kDefaultPadding),

                    RideStats(),

                    SizedBox(height: kDefaultPadding),

                    Divider(
                      color: kTextLightColor,
                    ),

                    SizedBox(height: kDefaultPadding),
                    //
                    // Text(
                    //   'Mark',
                    //   style: TextStyle(
                    //     color: kTextLightColor,
                    //     fontSize: 14,
                    //   ),
                    // ),

                    Text(
                      'How is your trip?',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    // SmoothStarRating(
                    //   allowHalfRating: false,
                    //   onRated: (v) {},
                    //   starCount: 5,
                    //   size: 40,
                    //   spacing:kDefaultPadding,
                    //   isReadOnly: false,
                    // ),

                    SizedBox(height: kDefaultPadding),

                    Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(0.0,15.0),
                            color: kTextColor.withAlpha(20)
                          )
                        ]
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Additional Comment',
                          hintStyle: TextStyle(
                            color: kTextLightColor,
                          )

                        ),
                      ),
                    )

                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}


