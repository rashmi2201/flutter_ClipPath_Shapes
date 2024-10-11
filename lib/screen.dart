import 'package:flutter/material.dart';
import 'package:flutter_reminder_app/clippath.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clippers',
          style: TextStyle(fontSize: 25),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //by using circular....
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  height: 170,
                  width: 170,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //by using elliptical....
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
                child: Container(
                  height: 170,
                  width: 170,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //by using elliptical....
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.elliptical(71, 11)),
                child: Container(
                  height: 170,
                  width: 170,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //by using Clipoval....
              ClipOval(
                child: SizedBox(
                    width: 200, // Width of the oval
                    height: 150, // Height of the oval
                    child: Container(
                      color: Colors.pink,
                    )),
              ),

              SizedBox(
                height: 20,
              ),
              //by using only....
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                child: Container(
                  height: 170,
                  width: 170,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //by using only....

              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(21),
                    topLeft: Radius.circular(51),
                    bottomRight: Radius.circular(21)),
                child: Container(
                  height: 100,
                  width: 250,
                  color: Colors.purple,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //by using only....

              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(51),
                  topLeft: Radius.circular(41),
                  bottomRight: Radius.circular(41),
                ),
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Image.asset('assets/dog.webp'),
                ),
              ),

              ClipOval(
                child: Container(
                  height: 150,
                  width: 250,
                  color: Colors.amber,
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
                      MaterialPageRoute(builder: (context) => Clippers()),
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
      ),
    );
  }
}
