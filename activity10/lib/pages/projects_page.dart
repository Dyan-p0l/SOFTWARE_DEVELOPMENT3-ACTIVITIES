import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "Projects",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red[700], // red accent for header
            ),
            textAlign: TextAlign.center,
          ),
      ),
      backgroundColor: Colors.white, // page background
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          
          const SizedBox(height: 24),
          _projectTile(
            icon: Icons.phone_android,
            title: "Simple Calculator App",
            subtitle: "A basic Flutter app performing arithmetic operations.",
          ),
          _projectTile(
            icon: Icons.sensors,
            title: "Fish Freshness Detector",
            subtitle:
                "A device using biosensors and ML to estimate fish freshness.",
          ),
          _projectTile(
            icon: Icons.android,
            title: "Autonomous Sumo Bot",
            subtitle: "Arduino-based robot with sensors and motors.",
          ),
        ],
      ),
    );
  }

  // Helper method for consistent styling
  Widget _projectTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0), // light background for tile
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Icon(
          icon,
          size: 36,
          color: const Color.fromARGB(255, 255, 255, 255), // icon color red
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 255, 0, 0), // title black
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: const Color.fromARGB(255, 225, 225, 225), // subtle grey for subtitle
          ),
        ),
      ),
    );
  }
}
