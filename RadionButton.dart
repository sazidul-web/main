import 'package:flutter/material.dart';

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
  int rvalue = 0;
  void mathod(int? value) {
    setState(() {
      rvalue = value ?? 0;
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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: Text('Flutter daveloper'),
              leading: Radio(
                value: 1,
                groupValue: rvalue,
                onChanged: mathod,
              ),
            ),
            ListTile(
              title: Text('Python daveloper'),
              leading: Radio(
                value: 2,
                groupValue: rvalue,
                onChanged: mathod,
              ),
            ),
            ListTile(
              title: Text('JavaScript Daveloper'),
              leading: Radio(
                value: 3,
                groupValue: rvalue,
                onChanged: mathod,
              ),
            )
          ],
        ),
      ),
    );
  }
}
