import 'package:flutter/material.dart';

void main() => runApp(menuApp());

class menuApp extends StatelessWidget {
  const menuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyPage()
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button clicked');
        //   },
        // ),
        actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),

      body: Center(
        child: ElevatedButton(onPressed: () {  },
          child: Text('Show me', style: TextStyle(color: Colors.white),),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
        )
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/sample1.png'),
                backgroundColor: Colors.red[400],
              ),
              otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/sample2.png'),
                backgroundColor: Colors.red[400],
              ),
              CircleAvatar(
                  backgroundImage: AssetImage('assets/sample2.png'),
                  backgroundColor: Colors.red[400],
                )
              ],
              accountName: Text('BBanto'),
              accountEmail: Text('rlatmddus159@naver.com'),
              onDetailsPressed: () {
              },
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print('clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ) ,


    );
  }
}



