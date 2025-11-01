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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  final List<Map<String, String>> cities = [
    {
      'name': 'Tokyo',
      'image': 'assets/images/tokyo.png',
      'desc': 'Japan’s bustling capital known for its neon lights and sushi.'
    },
    {
      'name': 'Paris',
      'image': 'assets/images/paris.png',
      'desc': 'The city of love, famous for the Eiffel Tower and rich culture.'
    },
    {
      'name': 'Cebu',
      'image': 'assets/images/ubec.png',
      'desc': 'A historic island in the Philippines known for beaches and lechon.'
    },
    {
      'name': 'Barcelona',
      'image': 'assets/images/barcelona.png',
      'desc': 'A Spanish city famous for its art, beaches, and Gaudí architecture.'
    },
    {
      'name': 'Beijing',
      'image': 'assets/images/beijing.png',
      'desc': 'China’s capital city, home to the Forbidden City and Great Wall.'
    },
    {
      'name': 'London',
      'image': 'assets/images/london.png',
      'desc': 'The capital of England, full of history and iconic landmarks.'
    },
    {
      'name': 'Los Angeles',
      'image': 'assets/images/losangeles.png',
      'desc': 'The heart of Hollywood and entertainment in the U.S.'
    },
    {
      'name': 'Seoul',
      'image': 'assets/images/seoul.png',
      'desc': 'South Korea’s vibrant capital blending tradition and technology.'
    },
    {
      'name': 'Shanghai',
      'image': 'assets/images/shanghai.png',
      'desc': 'A modern Chinese city with futuristic skyscrapers and culture.'
    },
    {
      'name': 'Times Square',
      'image': 'assets/images/time_square.png',
      'desc': 'The bright and lively hub of New York City.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF01161e),
        title: const Text(
          'Activity 7: ListView and Scrolling',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];
          final imagePath = city['image'];
          final cityName = city['name'] ?? 'Unknown';
          final cityDesc = city['desc'] ?? 'No description available.';

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: imagePath != null
                        ? Image.asset(
                            imagePath,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.broken_image, size: 80),
                          )
                        : const Icon(Icons.image_not_supported, size: 80),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cityName,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          cityDesc,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
