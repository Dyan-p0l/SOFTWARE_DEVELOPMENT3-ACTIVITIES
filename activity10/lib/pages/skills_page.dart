import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red[700], // red header
            ),
          ),
          const SizedBox(height: 24),
          _skillTile(
            icon: Icons.code,
            title: "Flutter / Dart",
          ),
          _skillTile(
            icon: Icons.memory,
            title: "C++ & Microcontrollers",
          ),
          _skillTile(
            icon: Icons.language,
            title: "JavaScript / Node.js",
          ),
          _skillTile(
            icon: Icons.computer,
            title: "Web Development (Frontend)",
          ),
        ],
      ),
    );
  }

  // Helper method for consistent styling
  Widget _skillTile({required IconData icon, required String title}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
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
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Icon(
          icon,
          size: 36,
          color: Colors.red[700], // red icon
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black, // bold black title
          ),
        ),
      ),
    );
  }
}
