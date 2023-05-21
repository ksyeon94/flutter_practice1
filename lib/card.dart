import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card',
      home: goodMorning(),
    );
  }
}

class goodMorning extends StatelessWidget {
  const goodMorning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[600],
      appBar: AppBar(
        title :Text("BBANTO ID CARD"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40,0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sample2.png'),
                radius: 60,
              ),
            ),
            Divider(
                height: 60,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30,
              ),

            Text('name',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            )
            ),
            SizedBox(
              height: 10.0
            ),
            Text('BBANTO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0
            )
            ),
            SizedBox(
                height: 30.0
            ),
            Text('BBANTO POWER LEVEL',
                  style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0)
            ),
            SizedBox(
                height: 10.0
            ),
            Text('14',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2.0
                )
            ),
            SizedBox(
                height: 30.0
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 2.0,
                )
                ),



              ],
            ),
        Row(
          children: [
            Icon(Icons.check_circle_outline),
            SizedBox(width: 10),

            Text('face hero tatoo',
                  style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 2.0,
                  )
                  )
                  ]
        ),
                  Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10),
                    Text('fire flames',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 2.0,
                        )
                    )]
    ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sample2.png'),
                radius: 50
              ),
            )
    ]),
      ),
    );
  }
}
