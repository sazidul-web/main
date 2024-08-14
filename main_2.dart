import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Damo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Splashsqeen(),
    );
  }
}

class Splashsqeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(fit: StackFit.passthrough, children: <Widget>[
          Container(
            height: 300,
            width: 400,
            color: Colors.green,
            child: Center(
              child: Text('I Am Sazidul',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: Container(
              height: 100,
              width: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Sazidul 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Container(
              height: 100,
              width: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Sazidul 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
