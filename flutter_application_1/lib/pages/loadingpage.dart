import 'package:flutter/material.dart';
import 'pagetwo.dart';

class loadingpage extends StatefulWidget {
  const loadingpage({super.key});
  
  @override
  State<loadingpage> createState() => _loadingPageStates();
}

class _loadingPageStates extends State<loadingpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min, // keeps row tight to content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BOOKHIVE",
              style: TextStyle(
                color: Colors.black, 
                fontFamily: 'Roboto Mono', 
                fontWeight: FontWeight.w900,
                fontSize: 27,),),
            SizedBox(height: 40, width: 40, child: Image.asset('assets/images/logo-bookhive.png'),),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/loadingscreen.png'),
          const Text("Buzzing with knowledge...", 
            style: TextStyle(
              fontSize: 23, 
              fontWeight: 
              FontWeight.bold),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
              print("pressed ka");
              Navigator.pushNamed(context, '/pagetwo');
            },
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 213, 1), foregroundColor: Colors.black, minimumSize: const Size(300, 50),),
            child: const Text(
              "Get Started",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),

          const SizedBox(height: 10, ),
        ],
      ),
    );
  }
}