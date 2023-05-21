import 'package:flutter/material.dart';
import 'package:flutter_tugaslisrview/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home List"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Container(
              height: 150,
              width: 150,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
      ),
    );
  }
}
