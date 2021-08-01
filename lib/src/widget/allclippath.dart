import 'package:flutter/material.dart';

//Login 3
class ClipPathWaterStyle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 100, 0);
    path.quadraticBezierTo(
        size.width, size.height * .4, size.width * .5, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

//Login 4
class ClipPathStreetStyle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 20);
    path.quadraticBezierTo(
        size.width / 3.4, size.height / 6, size.width * .7, size.height / 6);
    path.quadraticBezierTo(
        size.width * .8, size.height / 6, size.width * .82, size.height / 5);
    path.quadraticBezierTo(
        size.width * .9, size.height / 3, size.width * .78, size.height / 2.7);
    path.quadraticBezierTo(
        size.width * .3, size.height / 2, size.width, size.height / 1.67);
    // path.quadraticBezierTo(size.width * .7, size.height / 1.65,
    //     size.width * .75, size.height / 1.5);
    // path.quadraticBezierTo(0, size.height - 30, 0, size.height - 30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipPathStreetStyleSharp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height / 1.5);
    path.lineTo(size.width / 3.5, size.height / 1.5 + 50);
    path.lineTo(size.width / 3.5 + 40, size.height - size.height * .2);

    path.lineTo(size.width / 3.5 + 40, size.height - size.height * .2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipPathStreetStyleSharpTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(50, size.height / 1.6);
    path.lineTo(size.width * .5, size.height / 1.4);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipPathStreetStyleLine extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * .1);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

//login 6
class ClipPathMetroSocialBlock1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height / 1.7);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipPathMetroSocialBlock2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height * .85);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipPathMetroSocialBlock3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, size.height * 0.75);
    path.lineTo(size.width * .3, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
