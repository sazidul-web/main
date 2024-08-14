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
      body: IconList(),
    );
  }
}

class IconList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.wifi, 'title': 'Wi-Fi'},
    {'icon': Icons.gps_fixed, 'title': 'GPS'},
    {'icon': Icons.phone, 'title': 'Phone'},
    {'icon': Icons.camera, 'title': 'Camera'},
    {'icon': Icons.person, 'title': 'Person'},
    {'icon': Icons.logout, 'title': 'Logout'},
    {'icon': Icons.login, 'title': 'Login'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.green,
          elevation: 10,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  items[index]['icon'],
                  size: 50.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(items[index]['title']),
              ],
            ),
          ),
        );
      },
    );
  }
}
