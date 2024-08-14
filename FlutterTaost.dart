import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.amber,
        leading: Builder(builder: (BuildContext context) {
          return Icon(Icons.menu);
        }),
        title: Text('Sazidul Zone'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: TextButton(
            onPressed: () {
              ShowTaost('Hello, This is a Flutter toast!');
            },
            child: Text('Click on'),
          ),
        ),
      ),
    );
  }

  void ShowTaost(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 15,
    );
  }
}
