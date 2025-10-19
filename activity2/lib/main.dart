import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Basic Widgets Practice', style: TextStyle(
          color: Color.fromARGB(255, 241, 160, 29),
          fontWeight: FontWeight.bold,
          fontSize: 24,
          fontFamily: 'RobotoMono'
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Name: John Paul F. Rayco", style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFD3A2D),
            fontFamily: 'RobotoMono',
          ),),
          Container(
            padding: EdgeInsets.all(20),
            child: const Text("Quote: \"If it works, don’t touch it. If it doesn’t, act like it’s a feature.\"", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'RobotoMono', 
                fontSize: 23, 
                fontWeight: FontWeight.normal,
                color: Color(0xFFFF872C)
              ),
              softWrap: true,
              maxLines: 3,
              ),
          ),
          const Text("3 simple colored boxes", style: TextStyle(
            color: Color.fromARGB(255, 255, 157, 44),
            fontFamily: 'RobotoMono',
            fontSize: 20
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Color(0xFFFFA12C),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 255, 213, 44),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 255, 241, 44),
              ),
            ],
          )
        ],
      ),
    );
  }

}

