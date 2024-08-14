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
  final List<String> product =
      List<String>.generate(501, (i) => 'Product List: ${i}');
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
        body: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${product[index]}'),
            );
          },
        ));
  }
}
