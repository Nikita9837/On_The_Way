import 'package:flutter/material.dart';
import 'package:on_the_way/constraints.dart';
import 'package:on_the_way/Screens/rate/components/app_header.dart';

class AppHeader extends StatelessWidget{
  const AppHeader({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: double.infinity,
        height: 350.0,
        color: Color(0xFF03417A),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path= Path();

    path.lineTo(0, size.height-150);
    path.quadraticBezierTo(size.width/2, size.height, size.width,size.height-170);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}