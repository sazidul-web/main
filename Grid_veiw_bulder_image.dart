import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  final List<String> image = [
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=8mRHfHIlgloQ7kNvgFwc9mF&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCjVysBrFHNKQbKKMfTGcylm_AyjO-0ACgwHyJguIk7cA&oe=66C18EF3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.amber,
        leading: Builder(builder: (BuildContext context) {
          return Icon(Icons.menu);
        }),
        title: Text('Sazidul Zone'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: image.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Image.network(image[index]);
          },
        ),
      ),
    );
  }
}
