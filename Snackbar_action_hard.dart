import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<String> Lists = ['list 1', 'list 2', 'list 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: Lists.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(Lists[index]),
                trailing: Container(
                  width: 50,
                  child: TextButton(
                    onPressed: () {
                      ShowSnackBer(context, index);
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                ),
              );
            }));
  }

  void ShowSnackBer(BuildContext context, int index) {
    var deletedrecord = Lists[index];
    setState(() {
      Lists.removeAt(index);
    });
    SnackBar snackBar = SnackBar(
      content: Text('Delete $deletedrecord'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          Lists.insert(index, deletedrecord);
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
