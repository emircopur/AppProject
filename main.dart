import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emir Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 34, 241, 11)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter calısma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              width: 120,
              height: 100,
              color: Colors.red,
            ),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.black),
              ],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )
          ],
        ));
  }
}
