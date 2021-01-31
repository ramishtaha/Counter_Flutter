import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("PushUps Counter"),
      ),
      body: Center(
        child: Text('Total Number of Pushups: $num'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
