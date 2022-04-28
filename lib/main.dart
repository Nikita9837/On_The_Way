import 'package:flutter/material.dart';
// import 'package:on_the_way/homepage_rider.dart';

//testing routing - AJS
// import 'package:on_the_way/homepage_user.dart';
import 'package:on_the_way/splashScreen.dart';
// import 'package:on_the_way/userRequests.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}


