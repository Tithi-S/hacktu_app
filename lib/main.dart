import 'package:flutter/material.dart';
import 'savings.dart';

import 'investing.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,

          title: Text('Penny Wise'),
          backgroundColor: Color(0xff261038),
          centerTitle: true,
          // leading: new Padding(
          //   padding: const EdgeInsets.all(8.0),
          // child: new Material(
          //   shape: new CircleBorder(),
          // ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff261038),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff261038)),
                  accountName: Text(
                    "Prakriti Garg",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("pgarg_be21@thapar.edu"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color(0xff261038),
                    child: Text(
                      "P",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' Balance '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' Rewards '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' Join Friends '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(

                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff261038),
                      padding:

                          EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),

                    ),
                    onPressed: () {},
                    child: Text('My Wallet'),
                  )),
              Container(

                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff261038),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    ),
                    onPressed: () {
                      _navigateToScreen(context);
                    },
                    child: Text('My Savings'),
                  )),
              Container(

                  width: double.infinity,

                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff261038),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    ),

                    onPressed: () {
                      _navigateToiScreen(context);
                    },\
                    onPressed: () {},

                    child: Text('Investing'),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => goalScreen()));
  }


  void _navigateToiScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => investingscreen()));
  }
}
