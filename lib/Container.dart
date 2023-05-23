import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',

      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: 100, height: 100, child: Text('first'),color: Colors.yellow,margin: EdgeInsets.only(bottom: 90),),
              Container(width: 100, height: 100, child: Text('second'),color: Colors.green,),
              Container(width: 100, height: 100, child: Text('third'),color: Colors.blue,)
          ],
          ),
        ),
      ),
    );
  }
}

