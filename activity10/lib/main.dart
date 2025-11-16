import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/skills_page.dart';
import 'pages/projects_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Portfolio App',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    AboutPage(),
    SkillsPage(),
    ProjectsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 239, 17, 1),
        selectedFontSize: 18,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        unselectedFontSize: 16,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About",),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: "Skills"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Projects"),
        ],
      ),
    );
  }
}
