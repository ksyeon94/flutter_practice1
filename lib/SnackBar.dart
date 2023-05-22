import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: myhome(),
    );
  }
}

class myhome extends StatelessWidget {
  const myhome({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('snackBar'), centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 40),
      backgroundColor: Colors.orange,),
      body: ListView(children: [
        MySnackbar(),
         ElevatedButton(onPressed: () {flutterToast();
           print('clicked');}, child: Text('toast'))
      ], )
    );
  }
}

class MySnackbar extends StatelessWidget {
  const MySnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('냥냥'),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20, color: Colors.white))),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('야호',style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,),textAlign: TextAlign.center, ),
            backgroundColor: Colors.teal,
          duration: Duration(milliseconds: 1000),));
          print('무야호');
        },
      ),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
