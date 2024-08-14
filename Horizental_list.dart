import 'package:flutter/material.dart';

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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 130.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 130,
              color: Colors.blue,
              child: Stack(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              color: Colors.red,
              child: Stack(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              color: Colors.amber,
              child: Stack(
                children: [
                  ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Camera'),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              color: Colors.green,
              child: Stack(
                children: [
                  ListTile(
                    leading: Icon(Icons.gps_fixed),
                    title: Text('GPS'),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              color: Colors.yellowAccent,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Person'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
