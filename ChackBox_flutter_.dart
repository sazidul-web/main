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
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Sazidul zone'),
        shape: Border.all(width: 0.3, style: BorderStyle.solid),
        leading: Icon(Icons.menu),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'ChackBox with header and subtitle:',
              style: TextStyle(fontSize: 20),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.alarm),
              title: Text('Ring at 4.20 time everyday'),
              subtitle: Text('Ring at 12 hours left'),
              value: this.valuefirst,
              onChanged: (bool? newvalue) {
                // thik chinno dewar jnno aita used kora hoi.
                setState(() {
                  valuefirst = newvalue ?? false;
                });
              },
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: Icon(Icons.alarm),
                title: Text('Ring at 7.50 AM everyday'),
                subtitle: Text('Ring at 18 hours left'),
                value: this.valuesecond,
                onChanged: (bool? newvalue) {
                  setState(() {
                    valuesecond = newvalue ?? false;
                  });
                })
          ],
        ),
      ),
    );
  }
}
