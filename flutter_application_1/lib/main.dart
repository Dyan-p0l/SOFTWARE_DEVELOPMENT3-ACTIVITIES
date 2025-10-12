import 'package:flutter/material.dart';
import 'pages/loadingpage.dart';
import 'pages/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHAT THE DOG DOING',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loadingpage(),
      routes: {
        '/pagetwo': (context) => const pagetwo(),
    },
    );
  }
}