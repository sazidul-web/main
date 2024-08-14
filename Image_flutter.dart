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
      body: Container(
        child: Row(
          children: [
            SizedBox(
              height: 10,
              width: 10,
            ),
            // Column(
            //   children: [
            //     SizedBox(
            //       height:
            //           10, // This moves the images 10 units down from the top
            //     ),
            //     Image.network(
            //       'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeHPbsVFl6Y6wn9L4JLLWjqefTYHGKj0AwJ9NgcYqPQDAm04sE17tCbKet2bPTFN_GYsygSBbWliaCjo4SFsKHHr&_nc_ohc=5NEmHeDcWRsQ7kNvgEQJpRS&_nc_ht=scontent.fdac24-1.fna&oh=00_AYBvGAGsnRszyEm03rn4yyjbDcx6FyGTa3aL7eoDjmYQWg&oe=66BC48F3',
            //       height: 200,
            //       width: 200,
            //       fit: BoxFit.cover,
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   // height: 10,
            //   width: 10,
            // ),
            Column(
              children: [
                SizedBox(
                  height:
                      10, // This moves the images 10 units down from the top
                ),
                Image.network(
                  'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/274814083_1146758806074232_3542269012052072292_n.jpg?stp=dst-jpg_s960x960&_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=wFXFEltaxZ8Q7kNvgG1_ETM&_nc_ht=scontent.fdac24-1.fna&oh=00_AYD74HhGUskx3HIkr69NrDlfNkQJGINKUS7Tax9l4V6o6Q&oe=66BE7B73',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                Text('I am Sazidul islam rabbi. i am \nfine thank you.'),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            // Column(
            //   children: [
            //     SizedBox(
            //       height: 10,
            //       width: 10,
            //     ),
            //     Image.asset(
            //       'assets/images/sazidul.png',
            //       height: 200,
            //       width: 200,
            //       fit: BoxFit.fill,
            //     ),
            //   ],
            // ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Image.asset(
                  'assets/images/rabbi.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
