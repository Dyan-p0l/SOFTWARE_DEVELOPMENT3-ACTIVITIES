import 'package:flutter/material.dart';
import 'package:blobs/blobs.dart';



class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}


class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Blob.animatedRandom(
              size: 250,
              edgesCount: 5,
              minGrowth: 1,
              loop: true,
              styles: BlobStyles(
                color: const Color.fromARGB(255, 200, 37, 37), 
                fillType: BlobFillType.stroke, 
                strokeWidth: 4
              ),
              duration: const Duration(milliseconds: 3000), 
              child: ClipOval(
                child: Image.asset(
                  'assets/me.png',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hi there! ",
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.4,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    TextSpan(
                      text: "I'm Paul",
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.4,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 239, 17, 1),
                      ),
                    ),
                  ]
                )
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "A Computer Engineering student passionate about software development, IoT, and embedded systems.",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
