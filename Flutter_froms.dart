import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
  final _key = GlobalKey<FormState>();
  TextEditingController gmailctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First name:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    )),
                    labelText: 'Enter your first name',
                    hintText: 'Your first name:'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Last name:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  labelText: 'Enter your last name',
                  hintText: 'Your last name:',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Gmail or Phone:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  controller: gmailctrl,
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    labelText: 'Enter your Gmail or Phone',
                    hintText: 'Your Gmail or Phone:',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Plz Enter correct Gmail or phone';
                    } else if (value.runtimeType == String) {
                      return 'The Input is invalid';
                    }
                  }),
              Container(
                padding: EdgeInsets.only(left: 190, top: 40),
                child: ElevatedButton(
                  onPressed: () {
                    print("Your Gamil: ${gmailctrl.text}");
                  },
                  child: Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
