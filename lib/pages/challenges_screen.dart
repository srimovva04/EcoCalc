import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainability Challenges & Communities'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Challenges Section
            Text(
              'Join the Challenges!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 16),

            // Challenge 1: Reduce Plastic Usage
            ChallengeCard(
              title: 'Challenge 1: Reduce Plastic Usage',
              description:
              'Join the fight against plastic pollution by reducing your plastic usage.',
              icon: Icons.recycling,
              onTap: () {
                // Navigate to challenge details
              },
            ),

            // Challenge 2: Use Public Transport
            ChallengeCard(
              title: 'Challenge 2: Use Public Transport',
              description:
              'Save energy and reduce emissions by using public transportation.',
              icon: Icons.directions_bus,
              onTap: () {
                // Navigate to challenge details
              },
            ),

            // Community Engagement Section
            SizedBox(height: 32),
            Text(
              'Community Engagement',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 16),

            // Community Card 1
            CommunityCard(
              title: 'Eco-Friendly Group',
              description: 'Join a community of like-minded individuals working together on sustainable projects.',
              icon: Icons.group,
              onTap: () {
                // Navigate to community details
              },
            ),

            // Community Card 2
            CommunityCard(
              title: 'Tree Planting Campaign',
              description: 'Participate in a tree planting event near you.',
              icon: Icons.nature_people,
              onTap: () {
                // Navigate to community details
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for Challenge Cards
class ChallengeCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const ChallengeCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        leading: Icon(icon, size: 40, color: Colors.green[600]),
        trailing: Icon(Icons.arrow_forward, color: Colors.green[600]),
        onTap: onTap,
      ),
    );
  }
}

// Widget for Community Cards
class CommunityCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const CommunityCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        leading: Icon(icon, size: 40, color: Colors.green[600]),
        trailing: Icon(Icons.arrow_forward, color: Colors.green[600]),
        onTap: onTap,
      ),
    );
  }
}
