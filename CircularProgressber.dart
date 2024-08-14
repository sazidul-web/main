import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  double progressValue = 0.0;
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
      progressValue = 0.0;
    });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        loading = false;
      });
    });
    updateprogress();
  }

  void updateprogress() {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        progressValue += 0.2;
        if (progressValue >= 1.0) {
          loading = false;
          t.cancel();
          return;
        }
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
// Circular progress a simpel way.....------------------------------------
      // body: Center(
      //   child: CircularProgressIndicator(
      //     valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      //     strokeWidth: 5.0,
      //   ),
      // ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 7,
                  backgroundColor: Colors.amber,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  value: loading ? progressValue : null,
                ),
                Text(
                  '${(progressValue * 100).round()}%' 'Download',
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Startdownload();
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }
}
