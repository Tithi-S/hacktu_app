import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Goals',
      home: goalScreen(),
    );
  }
}

class goalScreen extends StatefulWidget {
  @override
  _goalScreenState createState() => _goalScreenState();
}

class _goalScreenState extends State<goalScreen> {
  List<String> mygoals = ['Ayush'];
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Goals'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              child: ListView.separated(
                itemCount: mygoals.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(mygoals[index]),
                    child: ListTile(
                      title: Text('${mygoals[index]}'),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        mygoals.removeAt(index);
                      });
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          TextField(
              controller: t1,
              decoration: InputDecoration(hintText: 'Enter Goal')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mygoals.add(t1.text);
            t1.clear();
          });
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.send),
      ),
    );
  }
}
