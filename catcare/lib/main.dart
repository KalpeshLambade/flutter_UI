import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      height: 180.0,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/catdoc.png'),
                            fit: BoxFit.cover,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color.fromARGB(255, 49, 50, 50),
                    child: SizedBox(
                      height: 180.0,
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Dr. Meow',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.w700,
                                fontSize: 30.0,
                                color: Colors.white),
                          ),
                          Text(
                            'Cat Speailist',
                            style: TextStyle(
                                fontFamily: 'SourceSans',
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                                letterSpacing: 8.0,
                                color: Colors.white),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.message,
                                  color: Colors.orangeAccent,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.phone,
                                  color: Colors.redAccent,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.video_camera_front,
                                  color: Colors.lightBlue,
                                  size: 30.0,
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
