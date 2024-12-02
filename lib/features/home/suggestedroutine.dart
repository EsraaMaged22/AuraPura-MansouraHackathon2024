
import 'package:flutter/material.dart';

class SuggestedRoutinesScreen extends StatelessWidget {
  const SuggestedRoutinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning, Mariam", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("How are you today?", style: TextStyle(fontSize: 16)),
                Icon(Icons.notifications),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                MoodButton(emoji: "🙂", label: "Happy"),
                MoodButton(emoji: "😡", label: "Angry"),
                MoodButton(emoji: "😢", label: "Sad"),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "\"Your mental health is a priority, your self-care is a necessity, and your happiness is your responsibility.\"",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  RoutineCard(
                    title: "Morning Routine",
                    description: "Start your day right with a calming morning routine.",
                    icon: Icons.wb_sunny,
                  ),
                  RoutineCard(
                    title: "Afternoon Routine",
                    description: "Take a short break to recharge your mind and body.",
                    icon: Icons.cloud,
                  ),
                  RoutineCard(
                    title: "Night Routine",
                    description: "Wind down with a calming evening routine.",
                    icon: Icons.nights_stay,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoodButton extends StatelessWidget {
  final String emoji;
  final String label;

  const MoodButton({required this.emoji, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text(emoji, style: TextStyle(fontSize: 24)),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class RoutineCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const RoutineCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 32, color: Colors.blue),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
