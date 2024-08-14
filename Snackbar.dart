import 'package:flutter/material.dart';
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
  final TextEditingController gmailctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('I am SnackBar, I have sent your SMS'),
              backgroundColor: Colors.black,
              action: SnackBarAction(label: 'UNDO', onPressed: () {}),
              duration: Duration(seconds: 5),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('CheckSnackBar'),
        ),
      ),
    );
  }
}
