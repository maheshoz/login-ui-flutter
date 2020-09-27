import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage  extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset(
          'assets/images/background.jpg',
          fit: BoxFit.cover,
        )
      ],)
    );
  }
}