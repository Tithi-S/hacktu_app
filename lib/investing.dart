import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investing',
      home: investingscreen(),
    );
  }
}

class investingscreen extends StatefulWidget {
  @override
  _investingscreenState createState() => _investingscreenState();
}

class _investingscreenState extends State<investingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investing'),
        backgroundColor: Color(0xff261038),
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
                backgroundColor: Color.fromARGB(255, 254, 252, 255),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {},
              child: Text(
                'Explore Stock Market',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 2, 28),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 254, 252, 255),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {},
              child: Text(
                'Learn About RD/FD',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 2, 28),
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
