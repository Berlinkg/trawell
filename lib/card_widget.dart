import 'package:flutter/material.dart';

Widget cardShape(String imgUrl, String title, String location) {
  return Hero(
    tag: "box-${location}",
    child: Material(
      color: Colors.transparent,
      child: ClipPath(
        clipper: MyCliper(),
        child: Container(
          width: 220,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imgUrl),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(),
          ),
        ),
      ),
    ),
  );
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path;
    var round = 40.0;

    // path.moveTo(round*2, round*2);
    // path.guadratic
    // path.LineTo(0, size.height);
    // path.LineTo(size.width, size.height);
    // path.Lineto(size.width, 0);
    return Path();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
