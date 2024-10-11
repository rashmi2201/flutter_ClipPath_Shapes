import 'package:flutter/material.dart';
import 'package:flutter_reminder_app/wave_clippath.dart';

class Clippers extends StatefulWidget {
  const Clippers({super.key});

  @override
  State<Clippers> createState() => _ClippersState();
}

class _ClippersState extends State<Clippers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Path'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ClipPath(
                clipper: Clip1Clipper(),
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipPath(
                clipper: Clip2Clipper(),
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.cyanAccent,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipPath(
                clipper: Clip3Clipper(),
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipPath(
                clipper: Clip4Clipper(),
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.brown,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipPath(
                clipper: Clip5Clipper(),
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CurveWave()),
                  );
                },
                child: Text(
                  'Swipe',
                  style: TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//make a methods... here

//1. square
class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

//2. right angle traingle
class Clip2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

///2. quadratic brezer
class Clip3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(0, size.height, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

///2. right sized brezer
class Clip4Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width, 0, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

///2. traingle
class Clip5Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
