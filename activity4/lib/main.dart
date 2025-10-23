import 'package:flutter/material.dart';
import 'floatingScrollHint.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Activity 04: Images and Icons',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.bold

          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/local-image.png',
                          width: 270,
                          height: 270,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8), // small gap
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.image, color: Colors.greenAccent, size: 22),
                          SizedBox(width: 6),
                          Text(
                            'LOCAL IMAGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'RobotoMono',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://raw.githubusercontent.com/Dyan-p0l/softdev_01/refs/heads/pic_branch/network-image.png',
                          width: 270,
                          height: 270,
                          fit: BoxFit.cover,
                        ),
                      ),  
                      const SizedBox(height: 8), 
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cloud, color: Color.fromARGB(255, 249, 106, 17), size: 22),
                          SizedBox(width: 6),
                          Text(
                            'NETWORK IMAGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'RobotoMono',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),

          
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: floatingScrollHint(),
            ),
          ),
        ],
      ),
);
  }
}  
