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
      backgroundColor: Colors.amber,
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(Icons.menu),
          title: Text('Sazidul first'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(
            'Save done',
          );
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Text you condition'),
              content: TextField(
                decoration: InputDecoration(
                  hintText: 'Text you: ',
                  labelText: 'Text you',
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Chancel')),
                TextButton(
                    onPressed: () {
                      print('Compelete');
                    },
                    child: Text('Done')),
              ],
            ),
          );
        },
        child: Text('Save'),
      ),
    );
  }
}
