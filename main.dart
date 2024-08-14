import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'DropDownButtonWidget.dart';

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
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (String result) {
              print('Selected: $result');
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Copy',
                child: Text('Copy'),
              ),
              PopupMenuItem<String>(
                value: 'Cut',
                child: Text('Cut'),
              ),
              PopupMenuItem<String>(
                value: 'Sattings',
                child: Text('Sattings'),
              ),
              PopupMenuItem<String>(
                value: 'Log out',
                child: Text('Log out'),
              )
            ],
          ),
        ],
      ),
      body: Container(
        height: 400,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sazidul',
                style: TextStyle(
                    fontSize: (20),
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text('Sazidul'),
              Text('Sazidul'),
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)),
                  labelText: 'Enter Name:',
                  hintText: 'Enter your name: ',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    print('Submited Done');
                  },
                  child: Text('Submit')),
              DropdownButtonWidget(),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    print('Add Succsessfull');
                  },
                  icon: Icon(Icons.add)),
              SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.green,
                highlightColor: Colors.blue,
                child: Icon(
                  Icons.ring_volume,
                  size: 20,
                ),
                onTap: () {
                  print('count++');
                },
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(onPressed: () {}, child: Text('Log out')),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('Javatpoint');
                      },
                      child: Text("Javatpoint")),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      print('Python');
                    },
                    child: Text('Python'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Save done');
        },
        child: Text('Save'),
      ),
    );
  }
}
