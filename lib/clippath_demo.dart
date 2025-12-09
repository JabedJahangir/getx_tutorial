import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ClippathDemo extends StatelessWidget {
  const ClippathDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.7,
            color: const Color.fromRGBO(255, 193, 7, 1),
            child: Icon(Iconsax.home4),
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
