import 'package:flutter/material.dart';
class HeadClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path=Path();

    path.lineTo(0, (size.height/5)*4);
    path.cubicTo(size.width/4, (size.height/4)*3, size.width/2,size.height, size.width, size.height*0.8);

    path.lineTo(size.width, 0);
    return path;
  }
  @override   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}