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
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: const Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5.0),
                    child: const Text(
                      'Specializing exclusively in cat care, Dr. Meow has an uncanny ability to decipher the secret language of meows.Known for his gentle touch and his preference for feathered toy consultations.After all, a happy cat is a healthy cat, and with Dr. Meow, every appointment is a tail-wagging, purr-inducing experience! 😸',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'SourceSans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 0),
                    child: const Column(children: <Widget>[
                      Card(
                        child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          title: Text(
                            'Address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          subtitle: Text(
                              'Dr. Meow Purrfect Clinic,\n 123 Whisker \nPurringtonville, CA 98765 \n USA'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading: Icon(
                            Icons.lock_clock,
                            color: Colors.green,
                          ),
                          title: Text(
                            'Daily Practice',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          subtitle: Text('Monday-Friday\n open till 7pm'),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/map.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 120.0,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Activity',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          color: Colors.black38,
                          height: 80.0,
                          width:MediaQuery.of(context).size.width*0.45,
                          child:const Center(
                            child:  ListTile(
                              titleAlignment: ListTileTitleAlignment.center,
                              leading: Icon(Icons.schedule,
                              color: Colors.white,
                              size: 30.0,),
                              title: Text('List of Schedule',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0
                              ),),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white54,
                          height: 80.0,
                          width:MediaQuery.of(context).size.width*0.45,
                          child: const Center(
                            child: ListTile(
                              titleAlignment: ListTileTitleAlignment.center,
                              leading: Icon(Icons.card_membership,
                              color: Colors.black,
                              size: 30.0,),
                              title: Text('Doctor Daily Post',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
