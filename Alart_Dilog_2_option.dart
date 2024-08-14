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
  final List<String> products = [
    'Apple',
    'Facebook',
    'Meta',
    'WhatsApp',
    'Instagram'
  ];

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Select Your Product'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: products.map((product) {
                  return ListTile(
                    leading: _getProductIcon(product), // Product icon added
                    title: Text(product),
                    onTap: () {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You Selected: $product'),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Chancel')),
                TextButton(onPressed: () {}, child: Text('Ok')),
              ],
            ),
          );
        },
        child: const Text('Save'),
      ),
    );
  }

  Icon _getProductIcon(String product) {
    switch (product) {
      case 'Apple':
        return const Icon(Icons.apple, color: Colors.red);
      case 'Facebook':
        return const Icon(Icons.facebook, color: Colors.blue);
      case 'Meta':
        return const Icon(Icons.mediation, color: Colors.blue);
      case 'WhatsApp':
        return const Icon(Icons.wechat_outlined, color: Colors.green);
      case 'Instagram':
        return const Icon(Icons.camera_alt, color: Colors.purple);
      default:
        return const Icon(Icons.device_unknown, color: Colors.grey);
    }
  }
}
