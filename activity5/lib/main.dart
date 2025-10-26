import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
      routes: {
        '/secondpage' : (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Activity 5", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        )),
      ),
      body: Center(
        child: ElevatedButton(style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 249, 32, 17),
        ),
          onPressed: (){
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text('GO TO NEXT PAGE', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          
        ))
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'QUOTE',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: Center(
        child: Padding( padding: EdgeInsetsGeometry.only(left: 20, right: 20),
          child: const Text(
            'Engineering is not about knowing everything. It’s about knowing how to Google it efficiently.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight:FontWeight.bold
              
            ),
          ),
        ),
      ),
    );
  }
}
