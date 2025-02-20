import 'package:flutter/material.dart';

class EducationalResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Resources'),
        backgroundColor: Colors.green[600],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0), // Overall padding
        child: GridView.count(
          crossAxisCount: 2, // Two columns in the grid
          crossAxisSpacing: 16.0, // Spacing between columns
          mainAxisSpacing: 16.0, // Spacing between rows
          childAspectRatio: 0.8, // Aspect ratio to make boxes taller
          children: <Widget>[
            _buildResourceCard(
              context,
              'Understanding Climate Change',
              Icons.cloud,
            ),
            _buildResourceCard(
              context,
              'Tips for Sustainable Living',
              Icons.eco,
            ),
            _buildResourceCard(
              context,
              'Renewable Energy Sources',
              Icons.lightbulb,
            ),
            _buildResourceCard(
              context,
              'Sustainable Agriculture',
              Icons.nature,
            ),
            _buildResourceCard(
              context,
              'Climate Action Plan',
              Icons.assignment,
            ),
            _buildResourceCard(
              context,
              'Zero Waste Lifestyle',
              Icons.delete_outline,
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create a resource card without subtext
  Widget _buildResourceCard(BuildContext context, String title, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Navigate to the article or resource (could be a new screen)
        print('Tapped on: $title');
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.green[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.green[50],
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Increased padding inside the card
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
            children: <Widget>[
              Icon(icon, size: 50, color: Colors.green[600]), // Increased icon size
              SizedBox(height: 16), // Increased space between icon and title
              Text(
                title,
                style: TextStyle(
                  fontSize: 20, // Increased font size for title
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                  fontFamily: 'Roboto', // Modern font
                ),
                textAlign: TextAlign.center, // Center align the title
              ),
            ],
          ),
        ),
      ),
    );
  }
}
