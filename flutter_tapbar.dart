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

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  List<String> Lists = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(Icons.menu),
          title: Text('Sazidul First'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Profile',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            ),
          ]),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(children: [
          FirstScene(
            list: Lists,
            showSnackbar: ShowSnakber,
          ),
          SecondScen(),
          ThardScen(),
        ]),
      ),
    );
  }

  void ShowSnakber(BuildContext context, int index) {
    var Deleteracord = Lists[index];
    setState(() {
      Lists.removeAt(index);
    });
    SnackBar snackBar = SnackBar(
      content: Text('delete${Deleteracord}'),
      action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            setState(() {
              Lists.insert(index, Deleteracord);
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class FirstScene extends StatelessWidget {
  final List<String> list;
  final Function(BuildContext, int) showSnackbar;
  FirstScene({required this.list, required this.showSnackbar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
            trailing: Container(
              width: 60,
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  showSnackbar(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondScen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('I am Second Scen. I am your profile page'),
      ),
    );
  }
}

class ThardScen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('I am Thard Secn. I am your Settings page'),
      ),
    );
  }
}
