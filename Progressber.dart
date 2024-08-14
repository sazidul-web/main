import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sazidul zone',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  Homepage createState() {
    return Homepage();
  }
}

class Homepage extends State<Home> {
  bool loading = false;
  int rvalue = 0;
  void mathod(int? value) {
    setState(() {
      rvalue = value ?? 0;
    });
  }

  void initState() {
    super.initState();
    loading = false;
  }

  void Startdownload() {
    setState(() {
      loading = true;
    });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Sazidul zone'),
        shape: Border.all(width: 0.3, style: BorderStyle.solid),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(18),
          child: loading
              ? LinearProgressIndicator()
              : Text(
                  'Press Button for downlod',
                  style: TextStyle(fontSize: 20),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Startdownload();
        },
        tooltip: 'Downlod',
        child: Icon(Icons.download),
      ),
    );
  }
}
