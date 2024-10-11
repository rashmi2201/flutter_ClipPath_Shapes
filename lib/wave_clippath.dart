import 'package:flutter/material.dart';


class CurveWave extends StatefulWidget {
  const CurveWave({super.key});

  @override
  State<CurveWave> createState() => _CurveWaveState();
}

class _CurveWaveState extends State<CurveWave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Curve Wave'),
      ),
      body: Center(
        child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    
    );
  }
}

//method ...
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 4);

    //1.for first wave
    var firstBendPoint = Offset(size.width / 7, size.height / 3);
    var firstEndPoint = Offset(size.width / 4, size.height / 4);
    path.quadraticBezierTo(firstBendPoint.dx, firstBendPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    //2.for second wave
    var secondBendPoint = Offset(2.5 * size.width / 7, size.height / 3);
    var secondEndPoint = Offset(2 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(secondBendPoint.dx, secondBendPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //3. for third wave
    var thirdBendPoint = Offset(4.5 * size.width / 7, size.height / 3);
    var thirdEndPoint = Offset(3 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(thirdBendPoint.dx, thirdBendPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //3. for fourth wave
    var fourthBendPoint = Offset(6 * size.width / 7, size.height / 3);
    var fourthEndPoint = Offset(4 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(fourthBendPoint.dx, fourthBendPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
