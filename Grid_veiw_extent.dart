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
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 200,
          primary: false,
          padding: EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.amber,
              child: Text(
                'First',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.green,
              child: Text(
                'Second',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.red,
              child: Text(
                'There',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.blue,
              child: Text(
                'Four',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.amber,
              child: Text(
                'Five',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
