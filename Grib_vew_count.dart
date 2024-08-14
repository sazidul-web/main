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
  final List<Map<String, dynamic>> Items = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.sell_rounded, 'title': 'Sell Rounded'},
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.phone, 'title': 'Phone'},
    {'icon': Icons.person, 'title': 'Person'},
  ];
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
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(Items.length, (index) {
          return Card(
            color: Colors.amber,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Icon(
                    Items[index]['icon'],
                    size: 50,
                  )),
                  Text(
                    Items[index]['title'],
                    style: TextStyle(),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
