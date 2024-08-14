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
                    title: Text('Save Information'),
                    content: Text('The information save you'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          print('Chancel done');
                        },
                        child: Text('Chancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Save done');
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ));
        },
        child: Text('Save'),
      ),
    );
  }
}
