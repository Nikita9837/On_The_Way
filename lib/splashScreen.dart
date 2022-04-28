import 'package:flutter/material.dart';

import 'firstHome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title:'OnTheWay')));
  }
  
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          child: Image.asset(
              'images/logomp_splash.png',

          ),
        ),
      ),
    );
  }
}
