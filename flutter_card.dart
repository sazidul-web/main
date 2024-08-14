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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: const Icon(Icons.menu),
          title: const Text('Sazidul First'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.green,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      size: 60,
                    ),
                    title: Text(
                      'Sonu Sazidul',
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text(
                      'Best of Sonu Sazidul song',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ButtonBar(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Play'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Pouse'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
