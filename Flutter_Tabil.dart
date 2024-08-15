import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sazidul zone',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  int MyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Sazidul zone'),
      ),
// Tabile row banano hoice----------------------------------------------------
      // body: Center(
      //   child: Column(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.all(20),
      //         child: Table(
      //           defaultColumnWidth: FixedColumnWidth(120),
      //           border: TableBorder.all(
      //             color: Colors.black,
      //             style: BorderStyle.solid,
      //             width: 2,
      //           ),
      //           children: [
      //             TableRow(children: [
      //               Column(
      //                 children: [Text('JavaScipt')],
      //               ),
      //               Column(
      //                 children: [Text('Python')],
      //               ),
      //               Column(
      //                 children: [Text('Flutter')],
      //               ),
      //             ]),
      //             TableRow(children: [
      //               Column(
      //                 children: [Text('Website')],
      //               ),
      //               Column(
      //                 children: [Text('Brewger')],
      //               ),
      //               Column(
      //                 children: [Text('Google')],
      //               )
      //             ]),
      //             TableRow(children: [
      //               Column(
      //                 children: [Text('Sazidul')],
      //               ),
      //               Column(
      //                 children: [Text('Islam')],
      //               ),
      //               Column(
      //                 children: [Text('Rabbi')],
      //               )
      //             ])
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [
          Center(
              child: Text(
            'Empoloyee chart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  "ID",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                  label: Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                'Professon',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text('1'),
                ),
                DataCell(Text('Sazidul')),
                DataCell(Text('Daveloper'))
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Rabbi')),
                DataCell(Text('CSE Eng:'))
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Ratul')),
                DataCell(Text('Civilan'))
              ]),
              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('Alamin')),
                DataCell(Text('Web Daveloper')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Borhan')),
                DataCell(Text('Wordpress'))
              ])
            ],
          )
        ],
      ),
    );
  }
}
